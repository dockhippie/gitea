#!/usr/bin/env bash

declare -x GITEA_MAILER_ENABLED
[[ -z "${GITEA_MAILER_ENABLED}" ]] && GITEA_MAILER_ENABLED="false"

declare -x GITEA_MAILER_SEND_BUFFER_LEN
[[ -z "${GITEA_MAILER_SEND_BUFFER_LEN}" ]] && GITEA_MAILER_SEND_BUFFER_LEN="100"

declare -x GITEA_MAILER_SUBJECT_PREFIX
[[ -z "${GITEA_MAILER_SUBJECT_PREFIX}" ]] && GITEA_MAILER_SUBJECT_PREFIX=""

declare -x GITEA_MAILER_HOST
[[ -z "${GITEA_MAILER_HOST}" ]] && GITEA_MAILER_HOST=""

declare -x GITEA_MAILER_DISABLE_HELO
[[ -z "${GITEA_MAILER_DISABLE_HELO}" ]] && GITEA_MAILER_DISABLE_HELO=""

declare -x GITEA_MAILER_HELO_HOSTNAME
[[ -z "${GITEA_MAILER_HELO_HOSTNAME}" ]] && GITEA_MAILER_HELO_HOSTNAME=""

declare -x GITEA_MAILER_SKIP_VERIFY
[[ -z "${GITEA_MAILER_SKIP_VERIFY}" ]] && GITEA_MAILER_SKIP_VERIFY=""

declare -x GITEA_MAILER_USE_CERTIFICATE
[[ -z "${GITEA_MAILER_USE_CERTIFICATE}" ]] && GITEA_MAILER_USE_CERTIFICATE="false"

declare -x GITEA_MAILER_CERT_FILE
[[ -z "${GITEA_MAILER_CERT_FILE}" ]] && GITEA_MAILER_CERT_FILE=""

declare -x GITEA_MAILER_KEY_FILE
[[ -z "${GITEA_MAILER_KEY_FILE}" ]] && GITEA_MAILER_KEY_FILE=""

declare -x GITEA_MAILER_IS_TLS_ENABLED
[[ -z "${GITEA_MAILER_IS_TLS_ENABLED}" ]] && GITEA_MAILER_IS_TLS_ENABLED="false"

declare -x GITEA_MAILER_FROM
[[ -z "${GITEA_MAILER_FROM}" ]] && GITEA_MAILER_FROM=""

declare -x GITEA_MAILER_USERNAME
[[ -z "${GITEA_MAILER_USERNAME}" ]] && GITEA_MAILER_USERNAME=""

declare -x GITEA_MAILER_PASSWORD
[[ -z "${GITEA_MAILER_PASSWORD}" ]] && GITEA_MAILER_PASSWORD=""

declare -x GITEA_MAILER_SEND_AS_PLAIN_TEXT
[[ -z "${GITEA_MAILER_SEND_AS_PLAIN_TEXT}" ]] && GITEA_MAILER_SEND_AS_PLAIN_TEXT="false"

declare -x GITEA_MAILER_MAILER_TYPE
[[ -z "${GITEA_MAILER_MAILER_TYPE}" ]] && GITEA_MAILER_MAILER_TYPE="smtp"

declare -x GITEA_MAILER_SENDMAIL_PATH
[[ -z "${GITEA_MAILER_SENDMAIL_PATH}" ]] && GITEA_MAILER_SENDMAIL_PATH="sendmail"

declare -x GITEA_MAILER_SENDMAIL_ARGS
[[ -z "${GITEA_MAILER_SENDMAIL_ARGS}" ]] && GITEA_MAILER_SENDMAIL_ARGS=""
