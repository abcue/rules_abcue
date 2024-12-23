"""Mirror of release info

TODO: generate this file from GitHub API"""

TOOL_VERSIONS = {
    # https://github.com/cue-lang/cue/releases/download/v0.11.1/checksums.txt
    # aba5b59b0a8454bcc9f1c25818a57e32925127f174ad105f88b7ef1ef35ba6bf  cue_v0.11.1_darwin_amd64.tar.gz
    # dcbb58af56d5833c3bb1525e8a16b92af95338d416e07cdd3f1997ec9fe65725  cue_v0.11.1_darwin_arm64.tar.gz
    # 60c46ec5b90190c22a96ab3529ad363d03b687331bbeb6d7d8097a2983d7716d  cue_v0.11.1_linux_amd64.tar.gz
    # 2734671d7bb4bb4916ddd96bf0cd7c9e10f645f7f654d7684e79b68cb88afb93  cue_v0.11.1_linux_arm64.tar.gz
    # 9ec0d4b82fbe682c5a7e5d752fe6240d69ad277216f832bdbd53bd3f496c09e0  cue_v0.11.1_windows_amd64.zip
    # 180b2da0dd893bbe1bc55ecb79125ea5f45cc4f776bb3cfb0483b008c63f9190  cue_v0.11.1_windows_arm64.zip
    "0.11.1": {
        "darwin_amd64": "aba5b59b0a8454bcc9f1c25818a57e32925127f174ad105f88b7ef1ef35ba6bf",
        "darwin_arm64": "dcbb58af56d5833c3bb1525e8a16b92af95338d416e07cdd3f1997ec9fe65725",
        "linux_amd64": "60c46ec5b90190c22a96ab3529ad363d03b687331bbeb6d7d8097a2983d7716d",
        "linux_arm64": "2734671d7bb4bb4916ddd96bf0cd7c9e10f645f7f654d7684e79b68cb88afb93",
        "windows_amd64": "9ec0d4b82fbe682c5a7e5d752fe6240d69ad277216f832bdbd53bd3f496c09e0",
        "windows_arm64": "180b2da0dd893bbe1bc55ecb79125ea5f45cc4f776bb3cfb0483b008c63f9190",
    },
    # https://github.com/cue-lang/cue/releases/download/v0.10.1/checksums.txt
    # 24c2495238b72e892ad8ba523d235ab4f2a7464398bdbb704456d8a889ef3f3f  cue_v0.10.1_darwin_amd64.tar.gz
    # cf0acd1f22271b76a399b95c3c491ca61936f7ab07f82aaacd1143da43a1426a  cue_v0.10.1_darwin_arm64.tar.gz
    # 25d13fdb896fef4d9cb30eb01cb78e3717fb7eaf22c4163cc5b70ed970f0bc48  cue_v0.10.1_linux_amd64.tar.gz
    # c06c37fa47b76363a3db0605b3a2e4114cd220a3a37746cf4bc07505fc07268b  cue_v0.10.1_linux_arm64.tar.gz
    # 34a88731391de4f0cd4c43dbd7cba38922eee28103d1c902ad12a993cec12d50  cue_v0.10.1_windows_amd64.zip
    # db09189395e40be14b1e836ad85900274dbf3655974209bad0a5ce69871af7c2  cue_v0.10.1_windows_arm64.zip
    "0.10.1": {
        "darwin_amd64": "24c2495238b72e892ad8ba523d235ab4f2a7464398bdbb704456d8a889ef3f3f",
        "darwin_arm64": "cf0acd1f22271b76a399b95c3c491ca61936f7ab07f82aaacd1143da43a1426a",
        "linux_amd64": "25d13fdb896fef4d9cb30eb01cb78e3717fb7eaf22c4163cc5b70ed970f0bc48",
        "linux_arm64": "c06c37fa47b76363a3db0605b3a2e4114cd220a3a37746cf4bc07505fc07268b",
        "windows_amd64": "34a88731391de4f0cd4c43dbd7cba38922eee28103d1c902ad12a993cec12d50",
        "windows_arm64": "db09189395e40be14b1e836ad85900274dbf3655974209bad0a5ce69871af7c2",
    },
    # https://github.com/cue-lang/cue/releases/download/v0.9.2/checksums.txt
    # 87ebebb8459d579ff791843b3228ca64dc372181456d8e2b4ad4e3f0c607c94d  cue_v0.9.2_darwin_amd64.tar.gz
    # 0f01909937c7f1b5b58d55e53a7d5366f3b4f8fc48dc31e391dd55340ea1ae95  cue_v0.9.2_darwin_arm64.tar.gz
    # 67c88f6c3bdf884301794c3ec91f9e6e3f660e7de3b7e10cd29fbbd291baac50  cue_v0.9.2_linux_amd64.tar.gz
    # 3b90c49faaf3367338bd95db0bf76ec86bf4ca7d175d42a221e27bdc8d265256  cue_v0.9.2_linux_arm64.tar.gz
    # b63616df5dcc13dc968e714d4935d2823600aa5bdda049edbcaeb639c91a1c76  cue_v0.9.2_windows_amd64.zip
    # 30fb3b62889f45da8c79a75c4c8772ea47306e5edca5c921c7ffb9095522ae1c  cue_v0.9.2_windows_arm64.zip
    "0.9.2": {
        "darwin_amd64": "87ebebb8459d579ff791843b3228ca64dc372181456d8e2b4ad4e3f0c607c94d",
        "darwin_arm64": "0f01909937c7f1b5b58d55e53a7d5366f3b4f8fc48dc31e391dd55340ea1ae95",
        "linux_amd64": "67c88f6c3bdf884301794c3ec91f9e6e3f660e7de3b7e10cd29fbbd291baac50",
        "linux_arm64": "3b90c49faaf3367338bd95db0bf76ec86bf4ca7d175d42a221e27bdc8d265256",
        "windows_amd64": "b63616df5dcc13dc968e714d4935d2823600aa5bdda049edbcaeb639c91a1c76",
        "windows_arm64": "30fb3b62889f45da8c79a75c4c8772ea47306e5edca5c921c7ffb9095522ae1c",
    },
    # https://github.com/cue-lang/cue/releases/download/v0.8.2/checksums.txt
    # 9f91ca27cfa7110c9e7b69ff751a6521be72db2b28e29b9b36b055e6ffb6d156  cue_v0.8.2_darwin_amd64.tar.gz
    # 4c9244623ae0c95971dbcc5f938e210d96efd5c1850bb346b0bdaaf5190a375d  cue_v0.8.2_darwin_arm64.tar.gz
    # 9c95df381722b8e547ab6f257981c73246ac7c7f7a6da7571b405bef6ffb22a0  cue_v0.8.2_linux_amd64.tar.gz
    # af846c9c11925f4f28f051b8778c779535a307923d7d5fb2a9bdc92aa5925325  cue_v0.8.2_linux_arm64.tar.gz
    # 7b172396a63b34c24612c6e9da0e49db137d35f35633b133d5a33eb82e4c3611  cue_v0.8.2_windows_amd64.zip
    # 7233a300e98cbdf542f6a4e111e60a090abe9e6d1cab595b47b480d4ace87ce7  cue_v0.8.2_windows_arm64.zip
    "0.8.2": {
        "darwin_amd64": "9f91ca27cfa7110c9e7b69ff751a6521be72db2b28e29b9b36b055e6ffb6d156",
        "darwin_arm64": "4c9244623ae0c95971dbcc5f938e210d96efd5c1850bb346b0bdaaf5190a375d",
        "linux_amd64": "9c95df381722b8e547ab6f257981c73246ac7c7f7a6da7571b405bef6ffb22a0",
        "linux_arm64": "af846c9c11925f4f28f051b8778c779535a307923d7d5fb2a9bdc92aa5925325",
        "windows_amd64": "7b172396a63b34c24612c6e9da0e49db137d35f35633b133d5a33eb82e4c3611",
        "windows_arm64": "7233a300e98cbdf542f6a4e111e60a090abe9e6d1cab595b47b480d4ace87ce7",
    },
}
