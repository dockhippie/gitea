#!/usr/bin/env bash

declare -x GITEA_HIGHLIGHT_MAPPING
[[ -z "${GITEA_HIGHLIGHT_MAPPING}" ]] && GITEA_HIGHLIGHT_MAPPING=".toml=ini"
