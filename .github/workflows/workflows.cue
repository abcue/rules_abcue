package workflows

import (
	"strings"
	"encoding/json"
)

[N=_]: {
	name: *strings.ToTitle(N) | _
	// Controls when the action will run.
	on: *{
		// Triggers the workflow on push or pull request events but only for the main branch
		push: branches: ["main"]
		pull_request: branches: ["main"]
		// Allows you to run this workflow manually from the Actions tab
		workflow_dispatch: null
	} | _
}

buildifier: jobs: check: {
	"runs-on": "ubuntu-latest"
	steps: [{
		uses: "actions/checkout@v4"
	}, {
		name: "buildifier"
		run:  "bazel run --enable_bzlmod //.github/workflows:buildifier.check"
	}]
}

ci: {
	name: "CI"
	concurrency: {
		// Cancel previous actions from the same PR or branch except 'main' branch.
		// See https://docs.github.com/en/actions/using-jobs/using-concurrency and https://docs.github.com/en/actions/learn-github-actions/contexts for more info.
		group:                "concurrency-group::${{ github.workflow }}::${{ github.event.pull_request.number > 0 && format('pr-{0}', github.event.pull_request.number) || github.ref_name }}${{ github.ref_name == 'main' && format('::{0}', github.run_id) || ''}}"
		"cancel-in-progress": "${{ github.ref_name != 'main' }}"
	}
	jobs: test: {
		uses: "bazel-contrib/.github/.github/workflows/bazel.yaml@v6"
		with: {
			folders: json.Indent(json.Marshal([
				".",
				".github/workflows",
				"e2e/smoke",
				"e2e/bazel6",
			]), "", "  ")
			exclude: json.Indent(json.Marshal([
				{"folder": ".", "bzlmodEnabled": false},
				{"folder": ".github/workflows", "bzlmodEnabled": false},
				{"folder": "e2e/bazel6", "bzlmodEnabled": true},
			]), "", "  ")
			exclude_windows: true
		}
	}
}

publish: {
	on: {
		// Run the publish workflow after a successful release
		// Will be triggered from the release.yaml workflow
		workflow_call: inputs: tag_name: {
			required: true
			type:     "string"
		}
		// In case of problems, let release engineers retry by manually dispatching
		// the workflow from the GitHub UI
		workflow_dispatch: inputs: tag_name: {
			required: true
			type:     "string"
		}
	}
	jobs: publish: {
		uses: "bazel-contrib/publish-to-bcr/.github/workflows/publish.yaml@v0.2.1"
		with: {
			tag_name: "${{ inputs.tag_name }}"
			// GitHub repository which is a fork of the upstream where the Pull Request will be opened.
			registry_fork: "abcue/bazel-central-registry"
			// see note on Attestation Support
			attest: true
		}
		permissions: {
			contents: "write"
			// Necessary if attest:true
			"id-token": "write"
			// Necessary if attest:true
			attestations: "write"
		}
		// Necessary to push to the BCR fork, and to open a pull request against a registry
		secrets: publish_token: "${{ secrets.BCR_PUBLISH_TOKEN }}"
	}
}

release: {
	// Cut a release whenever a new tag is pushed to the repo.
	// You should use an annotated tag, like `git tag -a v1.2.3`
	// and put the release notes into the commit message for the tag.
	on: push: close({tags: ["v*.*.*"]})
	permissions: contents: "write"
	jobs: release: {
		uses: "bazel-contrib/.github/.github/workflows/release_ruleset.yaml@v6"
		with: release_files: "rules_abcue-*.tar.gz"
	}
}
