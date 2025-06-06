"""Mirror of release info

TODO: generate this file from GitHub API"""

TOOL_VERSIONS = {
    # https://github.com/cue-lang/cue/releases/download/v0.12.1/checksums.txt
    # a39201b519d26388074fdb5aaafc653e98bade9e3d4472d4044f75a6888bfcba  cue_v0.12.1_darwin_amd64.tar.gz
    # 3eb7180adc231503b519cfa0934c0f856a2ad850d84ad3f6988bf86f6b2ace9f  cue_v0.12.1_darwin_arm64.tar.gz
    # 40ef0a84594494c953945fb297842d3168c92170694928c9565cc0b581235ac5  cue_v0.12.1_linux_amd64.tar.gz
    # ee296a58a17cc9141ad9abfd25e33faefd3fdb376e27fe6e599ceadb12fd0901  cue_v0.12.1_linux_arm64.tar.gz
    # a80b570bd5d2d7d7e653f3c8689b37a7396a98d486901a14954f1ef6a83bd275  cue_v0.12.1_windows_amd64.zip
    # 61563bf81f0020bf7b6dd7f69b981f0e77dd0a014b17323905236623ca3ca705  cue_v0.12.1_windows_arm64.zip
    "0.12.1": {
        "darwin_amd64": "a39201b519d26388074fdb5aaafc653e98bade9e3d4472d4044f75a6888bfcba",
        "darwin_arm64": "3eb7180adc231503b519cfa0934c0f856a2ad850d84ad3f6988bf86f6b2ace9f",
        "linux_amd64": "40ef0a84594494c953945fb297842d3168c92170694928c9565cc0b581235ac5",
        "linux_arm64": "ee296a58a17cc9141ad9abfd25e33faefd3fdb376e27fe6e599ceadb12fd0901",
        "windows_amd64": "a80b570bd5d2d7d7e653f3c8689b37a7396a98d486901a14954f1ef6a83bd275",
        "windows_arm64": "61563bf81f0020bf7b6dd7f69b981f0e77dd0a014b17323905236623ca3ca705",
    },
    # https://github.com/cue-lang/cue/releases/download/v0.11.2/checksums.txt
    # 75023d1b98ce8a4398b9b652c093cd44aa5255976f162d099aca3dd68abf1d58  cue_v0.11.2_darwin_amd64.tar.gz
    # 7fde93169c13b830b3a9a9009cea8c564488b464f39f543f066498e4b844e84a  cue_v0.11.2_darwin_arm64.tar.gz
    # cb9391bbea35cffbec8992f6f5816dea71919f8cfc5e5f201cd87bfc47e0bac6  cue_v0.11.2_linux_amd64.tar.gz
    # 2094660133df37981e3f40973f065e9bdcab1413f79b9b7cb705d9b5eaef3df4  cue_v0.11.2_linux_arm64.tar.gz
    # 6ed58000562d070282dd060a48f059d152c99b50b80eb602af1b986b8e6f01b6  cue_v0.11.2_windows_amd64.zip
    # 165c244331713e28c2a621cc9beb1ba9939618a3ad0efffa843f2190d3a70846  cue_v0.11.2_windows_arm64.zip
    "0.11.2": {
        "darwin_amd64": "75023d1b98ce8a4398b9b652c093cd44aa5255976f162d099aca3dd68abf1d58",
        "darwin_arm64": "7fde93169c13b830b3a9a9009cea8c564488b464f39f543f066498e4b844e84a",
        "linux_amd64": "cb9391bbea35cffbec8992f6f5816dea71919f8cfc5e5f201cd87bfc47e0bac6",
        "linux_arm64": "2094660133df37981e3f40973f065e9bdcab1413f79b9b7cb705d9b5eaef3df4",
        "windows_amd64": "6ed58000562d070282dd060a48f059d152c99b50b80eb602af1b986b8e6f01b6",
        "windows_arm64": "165c244331713e28c2a621cc9beb1ba9939618a3ad0efffa843f2190d3a70846",
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
