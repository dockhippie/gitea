#!/usr/bin/env bash

declare -x GITEA_CUSTOM
[[ -z "${GITEA_CUSTOM}" ]] && GITEA_CUSTOM="/usr/share/gitea"

declare -x GITEA_BASE_PATH
[[ -z "${GITEA_BASE_PATH}" ]] && GITEA_BASE_PATH="/var/lib/gitea"

declare -x GITEA_APP_NAME
[[ -z "${GITEA_APP_NAME}" ]] && GITEA_APP_NAME="Gitea: Git with a cup of tea"

declare -x GITEA_RUN_MODE
[[ -z "${GITEA_RUN_MODE}" ]] && GITEA_RUN_MODE="prod"

declare -x GITEA_CONFIG_PATH
[[ -z "${GITEA_CONFIG_PATH}" ]] && GITEA_CONFIG_PATH="/etc/gitea"

declare -x GITEA_CONFIG_FILE
[[ -z "${GITEA_CONFIG_FILE}" ]] && GITEA_CONFIG_FILE="${GITEA_CONFIG_PATH}/gitea.ini"

declare -x GITEA_CONFIG_TEMPLATE
[[ -z "${GITEA_CONFIG_TEMPLATE}" ]] && GITEA_CONFIG_TEMPLATE="/etc/templates/gitea.tmpl"

declare -x GITEA_SKIP_CHOWN
[[ -z "${GITEA_SKIP_CHOWN}" ]] && GITEA_SKIP_CHOWN="false"
