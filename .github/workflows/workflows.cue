package workflows

import "encoding/json"

ci: {
	// Controls when the action will run.
	on: {
		// Triggers the workflow on push or pull request events but only for the main branch
		push: branches: ["main"]
		pull_request: branches: ["main"]
		// Allows you to run this workflow manually from the Actions tab
		workflow_dispatch: null
	}
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

release: {
	// Cut a release whenever a new tag is pushed to the repo.
	// You should use an annotated tag, like `git tag -a v1.2.3`
	// and put the release notes into the commit message for the tag.
	name: "Release"
	on: push: tags: ["v*.*.*"]
	permissions: contents: "write"
	jobs: release: {
		uses: "bazel-contrib/.github/.github/workflows/release_ruleset.yaml@v6"
		with: release_files: "rules_abcue-*.tar.gz"
	}
}
