# Gitea

[![Build Status](https://cloud.drone.io/api/badges/dockhippie/gitea/status.svg)](https://cloud.drone.io/dockhippie/gitea)
[![](https://images.microbadger.com/badges/image/webhippie/gitea.svg)](https://microbadger.com/images/webhippie/gitea "Get your own image badge on microbadger.com")

These are docker images for [Gitea](https://gitea.io/en-us/) running on an [Alpine Linux container](https://registry.hub.docker.com/u/webhippie/alpine/).


## Versions

* [latest](./latest) available as `webhippie/gitea:latest`
* [1.11](./v1.11) available as `webhippie/gitea:1.11`
* [1.10](./v1.10) available as `webhippie/gitea:1.11`
* [1.9](./v1.9) available as `webhippie/gitea:1.9`


## Volumes

* /var/lib/gitea
* /var/log/gitea
* /usr/share/gitea


## Ports

* 3000
* 2222


## Available environment variables

```bash
GITEA_ADMIN_DEFAULT_EMAIL_NOTIFICATIONS = enabled
GITEA_ADMIN_DISABLE_REGULAR_ORG_CREATION = false
GITEA_API_DEFAULT_GIT_TREES_PER_PAGE = 1000
GITEA_API_DEFAULT_MAX_BLOB_SIZE = 10485760
GITEA_API_DEFAULT_PAGING_NUM = 30
GITEA_API_ENABLE_SWAGGER = true
GITEA_API_MAX_RESPONSE_ITEMS = 50
GITEA_APP_NAME = Gitea: Git with a cup of tea
GITEA_ATTACHMENT_ALLOWED_TYPES = image/jpeg|image/png|application/zip|application/gzip
GITEA_ATTACHMENT_ENABLED = true
GITEA_ATTACHMENT_MAX_FILES = 5
GITEA_ATTACHMENT_MAX_SIZE = 5
GITEA_ATTACHMENT_PATH = ${GITEA_BASE_PATH}/attachments
GITEA_BASE_PATH = /var/lib/gitea
GITEA_CACHE_ADAPTER = memory
GITEA_CACHE_INTERVAL = 60
GITEA_CACHE_ITEM_TTL = 16h
GITEA_CACHE_MEMCACHE_HOST = memcached:11211
GITEA_CACHE_REDIS_DB = 0
GITEA_CACHE_REDIS_HOST = redis:6379
GITEA_CACHE_REDIS_IDLE_TIMEOUT = 180
GITEA_CACHE_REDIS_PASSWORD =
GITEA_CACHE_REDIS_POOL_SIZE = 100
GITEA_CACHE_WAIT_FOR_FAIL = true
GITEA_CONFIG_FILE = ${GITEA_CONFIG_PATH}/gitea.ini
GITEA_CONFIG_PATH = /etc/gitea
GITEA_CONFIG_TEMPLATE = /etc/templates/gitea.tmpl
GITEA_CRON_ARCHIVE_CLEANUP_ENABLED = true
GITEA_CRON_ARCHIVE_CLEANUP_OLDER_THAN = 24h
GITEA_CRON_ARCHIVE_CLEANUP_RUN_AT_START = true
GITEA_CRON_ARCHIVE_CLEANUP_SCHEDULE = @every 24h
GITEA_CRON_CHECK_REPO_STATS = true
GITEA_CRON_CHECK_REPO_STATS_SCHEDULE = @every 24h
GITEA_CRON_ENABLED = true
GITEA_CRON_REPO_HEALTH_CHECK_ARGS =
GITEA_CRON_REPO_HEALTH_CHECK_SCHEDULE = @every 24h
GITEA_CRON_REPO_HEALTH_CHECK_TIMEOUT = 60s
GITEA_CRON_RUN_AT_START = false
GITEA_CRON_SYNC_EXTERNAL_USERS_RUN_AT_START = false
GITEA_CRON_SYNC_EXTERNAL_USERS_SCHEDULE = @every 24h
GITEA_CRON_SYNC_EXTERNAL_USERS_UPDATE_EXISTING = true
GITEA_CRON_UPDATE_MIGRATION_POST_ID_SCHEDULE = @every 24h
GITEA_CRON_UPDATE_MIRRORS_SCHEDULE = @every 10m
GITEA_CUSTOM = /usr/share/gitea
GITEA_DATABASE_CHARSET = utf8
GITEA_DATABASE_CONN_MAX_LIFETIME = 3s
GITEA_DATABASE_HOST = mysql:3306
GITEA_DATABASE_ITERATE_BUFFER_SIZE = 50
GITEA_DATABASE_LOG_SQL = false
GITEA_DATABASE_MAX_IDLE_CONNS = 2
GITEA_DATABASE_MAX_OPEN_CONNS = 0
GITEA_DATABASE_NAME = gitea
GITEA_DATABASE_PASSWORD =
GITEA_DATABASE_PATH = ${GITEA_SERVER_APP_DATA_PATH}/gitea.sqlite3
GITEA_DATABASE_RETRIES = 10
GITEA_DATABASE_RETRY_BACKOFF = 3s
GITEA_DATABASE_SSL = false
GITEA_DATABASE_TIMEOUT = 500
GITEA_DATABASE_TYPE = sqlite3
GITEA_DATABASE_USERNAME = root
GITEA_DATABASE_WAIT_FOR_FAIL = true
GITEA_GIT_DISABLE_DIFF_HIGHLIGHT = false
GITEA_GIT_ENABLE_AUTO_GIT_WIRE_PROTOCOL = true
GITEA_GIT_GC_ARGS =
GITEA_GIT_MAX_GIT_DIFF_FILES = 100
GITEA_GIT_MAX_GIT_DIFF_LINES = 1000
GITEA_GIT_MAX_GIT_DIFF_LINE_CHARACTERS = 5000
GITEA_GIT_PATH =
GITEA_GIT_TIMEOUT_CLONE = 300
GITEA_GIT_TIMEOUT_DEFAULT = 360
GITEA_GIT_TIMEOUT_GC = 60
GITEA_GIT_TIMEOUT_MIGRATE = 600
GITEA_GIT_TIMEOUT_MIRROR = 300
GITEA_GIT_TIMEOUT_PULL = 300
GITEA_HEALTHCHECK_CODE = 200
GITEA_HEALTHCHECK_URL = ${GITEA_SERVER_LOCAL_ROOT_URL}
GITEA_HIGHLIGHT_MAPPING = .toml=ini
GITEA_INDEXER_ISSUE_PATH = ${GITEA_INDEXER_PATH}/issues.bleve
GITEA_INDEXER_ISSUE_QUEUE_BATCH_NUMBER = 20
GITEA_INDEXER_ISSUE_QUEUE_PATH = ${GITEA_INDEXER_PATH}/issues.queue
GITEA_INDEXER_ISSUE_QUEUE_TYPE = levelqueue
GITEA_INDEXER_ISSUE_TYPE = bleve
GITEA_INDEXER_MAX_FILE_SIZE = 1048576
GITEA_INDEXER_PATH = ${GITEA_BASE_PATH}/indexers
GITEA_INDEXER_REDIS_DB = 0
GITEA_INDEXER_REDIS_HOST = redis:6379
GITEA_INDEXER_REDIS_PASSWORD =
GITEA_INDEXER_REPO_ENABLED = false
GITEA_INDEXER_REPO_EXCLUDE =
GITEA_INDEXER_REPO_INCLUDE =
GITEA_INDEXER_REPO_PATH = ${GITEA_INDEXER_PATH}/repos.bleve
GITEA_INDEXER_UPDATE_BUFFER_LEN = 20
GITEA_LOG_ACCESS = console
GITEA_LOG_ACCESS_LOG_TEMPLATE = {{.Ctx.RemoteAddr}} - {{.Identity}} {{.Start.Format "[02/Jan/2006:15:04:05 -0700]" }} "{{.Ctx.Req.Method}} {{.Ctx.Req.RequestURI}} {{.Ctx.Req.Proto}}" {{.ResponseWriter.Status}} {{.ResponseWriter.Size}} "{{.Ctx.Req.Referer}}\" \"{{.Ctx.Req.UserAgent}}"
GITEA_LOG_BUFFER_LEN = 10000
GITEA_LOG_CONN_ADDR =
GITEA_LOG_CONN_LEVEL =
GITEA_LOG_CONN_PROTOCOL = tcp
GITEA_LOG_CONN_RECONNECT = false
GITEA_LOG_CONN_RECONNECT_ON_MSG = false
GITEA_LOG_CONSOLE_LEVEL =
GITEA_LOG_CONSOLE_STDERR = false
GITEA_LOG_ENABLE_ACCESS_LOG = false
GITEA_LOG_FILEMAX_SIZE_SHIFT = 28
GITEA_LOG_FILE_COMPRESS = true
GITEA_LOG_FILE_COMPRESSION_LEVEL = -1
GITEA_LOG_FILE_DAILY_ROTATE = true
GITEA_LOG_FILE_LEVEL =
GITEA_LOG_FILE_MAX_DAYS = 7
GITEA_LOG_FILE_MAX_LINES = 1000000
GITEA_LOG_FILE_NAME =
GITEA_LOG_FILE_ROTATE = true
GITEA_LOG_LEVEL = Info
GITEA_LOG_MACARON = console
GITEA_LOG_MODE = console
GITEA_LOG_REDIRECT_MACARON_LOG = false
GITEA_LOG_ROOT_PATH = /var/log/gitea
GITEA_LOG_ROUTER = console
GITEA_LOG_ROUTER_LOG_LEVEL = Info
GITEA_LOG_SMTP_HOST =
GITEA_LOG_SMTP_LEVEL =
GITEA_LOG_SMTP_PASSWD =
GITEA_LOG_SMTP_RECEIVERS =
GITEA_LOG_SMTP_SUBJECT = Diagnostic message from server
GITEA_LOG_SMTP_USER =
GITEA_LOG_STACKTRACE_LEVEL = None
GITEA_LOG_X_COLORIZE = false
GITEA_LOG_X_EXPRESSION =
GITEA_LOG_X_FLAGS = stdflags
GITEA_LOG_X_PREFIX =
GITEA_MAILER_CERT_FILE =
GITEA_MAILER_DISABLE_HELO =
GITEA_MAILER_ENABLED = false
GITEA_MAILER_FROM =
GITEA_MAILER_HELO_HOSTNAME =
GITEA_MAILER_HOST =
GITEA_MAILER_IS_TLS_ENABLED = false
GITEA_MAILER_KEY_FILE =
GITEA_MAILER_MAILER_TYPE = smtp
GITEA_MAILER_PASSWORD =
GITEA_MAILER_SENDMAIL_ARGS =
GITEA_MAILER_SENDMAIL_PATH = sendmail
GITEA_MAILER_SEND_AS_PLAIN_TEXT = false
GITEA_MAILER_SEND_BUFFER_LEN = 100
GITEA_MAILER_SKIP_VERIFY =
GITEA_MAILER_SUBJECT_PREFIX =
GITEA_MAILER_USERNAME =
GITEA_MAILER_USE_CERTIFICATE = false
GITEA_MARKDOWN_CUSTOM_URL_SCHEMES =
GITEA_MARKDOWN_ENABLE_HARD_LINE_BREAK = false
GITEA_MARKDOWN_FILE_EXTENSIONS = .md,.markdown,.mdown,.mkd,
GITEA_MARKUP_ASCIIDOC_ENABLED = true
GITEA_MARKUP_ASCIIDOC_FILE_EXTENSIONS = .adoc,.asciidoc
GITEA_MARKUP_ASCIIDOC_IS_INPUT_FILE = false
GITEA_MARKUP_ASCIIDOC_RENDER_COMMAND = asciidoc --out-file=- -
GITEA_MAX_DISPLAY_FILE_SIZE = 8388608
GITEA_METRICS_ENABLED = false
GITEA_METRICS_TOKEN =
GITEA_MIRROR_DEFAULT_INTERVAL = 8h
GITEA_MIRROR_MIN_INTERVAL = 10m
GITEA_OAUTH2_ACCESS_TOKEN_EXPIRATION_TIME = 3600
GITEA_OAUTH2_ENABLED = true
GITEA_OAUTH2_INVALIDATE_REFRESH_TOKENS = false
GITEA_OAUTH2_JWT_SECRET =
GITEA_OAUTH2_REFRESH_TOKEN_EXPIRATION_TIME = 730
GITEA_OPENID_BLACKLISTED_URIS =
GITEA_OPENID_ENABLE_OPENID_SIGNIN = false
GITEA_OPENID_ENABLE_OPENID_SIGNUP = false
GITEA_OPENID_WHITELISTED_URIS =
GITEA_OTHER_SHOW_FOOTER_BRANDING = false
GITEA_OTHER_SHOW_FOOTER_TEMPLATE_LOAD_TIME = true
GITEA_OTHER_SHOW_FOOTER_VERSION = false
GITEA_PICTURE_AVATAR_MAX_FILE_SIZE = 1048576
GITEA_PICTURE_AVATAR_MAX_HEIGHT = 3072
GITEA_PICTURE_AVATAR_MAX_WIDTH = 4096
GITEA_PICTURE_AVATAR_UPLOAD_PATH = ${GITEA_BASE_PATH}/avatars
GITEA_PICTURE_DISABLE_GRAVATAR = false
GITEA_PICTURE_ENABLE_FEDERATED_AVATAR = false
GITEA_PICTURE_GRAVATAR_SOURCE = gravatar
GITEA_PICTURE_REPOSITORY_AVATAR_FALLBACK = none
GITEA_PICTURE_REPOSITORY_AVATAR_FALLBACK_IMAGE = /img/repo_default.png
GITEA_PICTURE_REPOSITORY_AVATAR_UPLOAD_PATH = ${GITEA_BASE_PATH}/avatars/repo
GITEA_REPO_ACCESS_CONTROL_ALLOW_ORIGIN =
GITEA_REPO_ANSI_CHARSET =
GITEA_REPO_DEFAULT_CLOSE_ISSUES_VIA_COMMITS_IN_ANY_BRANCH = false
GITEA_REPO_DEFAULT_PRIVATE = last
GITEA_REPO_DISABLE_HTTP_GIT = false
GITEA_REPO_EDITOR_LINE_WRAP_EXTENSIONS = .txt,.md,.markdown,.mdown,.mkd
GITEA_REPO_EDITOR_PREVIEWABLE_FILE_MODES = markdown
GITEA_REPO_FORCE_PRIVATE = false
GITEA_REPO_ISSUE_LOCK_REASONS = Heated,Offtopic,Resolved,Spam
GITEA_REPO_LOCAL_LOCAL_COPY_PATH = /tmp/gitea/repo
GITEA_REPO_LOCAL_LOCAL_WIKI_PATH = /tmp/gitea/wiki
GITEA_REPO_MAX_CREATION_LIMIT = -1
GITEA_REPO_MIRROR_QUEUE_LENGTH = 1000
GITEA_REPO_PREFERRED_LICENSES = Apache License 2.0,MIT License
GITEA_REPO_PULL_REQUEST_QUEUE_LENGTH = 1000
GITEA_REPO_PULL_REQUEST_WIP_PREFIXES = WIP:,[WIP]
GITEA_REPO_ROOT = ${GITEA_BASE_PATH}/repos
GITEA_REPO_SCRIPT_TYPE = bash
GITEA_REPO_UPLOAD_ALLOWED_TYPES =
GITEA_REPO_UPLOAD_ENABLED = true
GITEA_REPO_UPLOAD_FILE_MAX_SIZE = 3
GITEA_REPO_UPLOAD_MAX_FILES = 5
GITEA_REPO_UPLOAD_TEMP_PATH = /tmp/gitea/upload
GITEA_REPO_USE_COMPAT_SSH_URI = false
GITEA_RUN_MODE = prod
GITEA_SECURITY_COOKIE_REMEMBER_NAME = gitea-remember
GITEA_SECURITY_COOKIE_USERNAME = gitea-username
GITEA_SECURITY_CSRF_COOKIE_HTTP_ONLY = true
GITEA_SECURITY_DISABLE_GIT_HOOKS = false
GITEA_SECURITY_IMPORT_LOCAL_PATHS = false
GITEA_SECURITY_INSTALL_LOCK = true
GITEA_SECURITY_INTERNAL_TOKEN =
GITEA_SECURITY_LOGIN_REMEMBER_DAYS = 7
GITEA_SECURITY_MIN_PASSWORD_LENGTH = 6
GITEA_SECURITY_PASSWORD_COMPLEXITY = lower,upper,digit
GITEA_SECURITY_PASSWORD_HASH_ALGO = pbkdf2
GITEA_SECURITY_REVERSE_PROXY_AUTHENTICATION_EMAIL = X-WEBAUTH-EMAIL
GITEA_SECURITY_REVERSE_PROXY_AUTHENTICATION_USER = X-WEBAUTH-USER
GITEA_SECURITY_SECRET_KEY =
GITEA_SERVER_APP_DATA_PATH = ${GITEA_BASE_PATH}/data
GITEA_SERVER_BUILTIN_SSH_SERVER_USER =
GITEA_SERVER_CERT_FILE =
GITEA_SERVER_DISABLE_ROUTER_LOG = true
GITEA_SERVER_DISABLE_SSH = false
GITEA_SERVER_DOMAIN = gitea
GITEA_SERVER_ENABLE_GZIP = false
GITEA_SERVER_ENABLE_PPROF = false
GITEA_SERVER_HTTP_ADDR = 0.0.0.0
GITEA_SERVER_HTTP_PORT = 3000
GITEA_SERVER_KEY_FILE =
GITEA_SERVER_LANDING_PAGE = home
GITEA_SERVER_LFS_CONTENT_PATH = ${GITEA_BASE_PATH}/lfs
GITEA_SERVER_LFS_HTTP_AUTH_EXPIRY = 20m
GITEA_SERVER_LFS_JWT_SECRET =
GITEA_SERVER_LFS_START_SERVER = false
GITEA_SERVER_LOCAL_ROOT_URL = ${GITEA_SERVER_PROTOCOL}://${GITEA_SERVER_HTTP_ADDR}:${GITEA_SERVER_HTTP_PORT}/
GITEA_SERVER_MINIMUM_KEY_SIZE_CHECK = false
GITEA_SERVER_OFFLINE_MODE = false
GITEA_SERVER_PORT_TO_REDIRECT = 80
GITEA_SERVER_PPROF_DATA_PATH = ${GITEA_BASE_PATH}/pprof
GITEA_SERVER_PROTOCOL = http
GITEA_SERVER_REDIRECT_OTHER_PORT = false
GITEA_SERVER_ROOT_URL = ${GITEA_SERVER_PROTOCOL}://${GITEA_SERVER_DOMAIN}:${GITEA_SERVER_HTTP_PORT}/
GITEA_SERVER_SSH_BACKUP_AUTHORIZED_KEYS = false
GITEA_SERVER_SSH_CREATE_AUTHORIZED_KEYS_FILE = false
GITEA_SERVER_SSH_DOMAIN = ${GITEA_SERVER_DOMAIN}
GITEA_SERVER_SSH_EXPOSE_ANONYMOUS = true
GITEA_SERVER_SSH_KEYGEN_PATH = ssh-keygen
GITEA_SERVER_SSH_KEY_TEST_PATH = /tmp/gitea/sshkey
GITEA_SERVER_SSH_LISTEN_HOST = 0.0.0.0
GITEA_SERVER_SSH_LISTEN_PORT = ${GITEA_SERVER_SSH_PORT}
GITEA_SERVER_SSH_PORT = 2222
GITEA_SERVER_SSH_ROOT_PATH = /var/lib/gitea/ssh
GITEA_SERVER_SSH_SERVER_CIPHERS = aes128-ctr, aes192-ctr, aes256-ctr, aes128-gcm@openssh.com, arcfour256, arcfour128
GITEA_SERVER_SSH_SERVER_KEY_EXCHANGES = diffie-hellman-group1-sha1, diffie-hellman-group14-sha1, ecdh-sha2-nistp256, ecdh-sha2-nistp384, ecdh-sha2-nistp521, curve25519-sha256@libssh.org
GITEA_SERVER_SSH_SERVER_MACS = hmac-sha2-256-etm@openssh.com, hmac-sha2-256, hmac-sha1, hmac-sha1-96
GITEA_SERVER_START_SSH_SERVER = true
GITEA_SERVER_STATIC_ROOT_PATH = ${GITEA_CUSTOM}
GITEA_SERVER_UNIX_SOCKET_PERMISSION = 666
GITEA_SERVICE_ACTIVE_CODE_LIVE_MINUTES = 180
GITEA_SERVICE_ALLOW_ONLY_EXTERNAL_REGISTRATION = false
GITEA_SERVICE_AUTO_WATCH_NEW_REPOS = true
GITEA_SERVICE_CAPTCHA_TYPE = image
GITEA_SERVICE_DEFAULT_ALLOW_CREATE_ORGANIZATION = true
GITEA_SERVICE_DEFAULT_ALLOW_ONLY_CONTRIBUTORS_TO_TRACK_TIME = true
GITEA_SERVICE_DEFAULT_ENABLE_DEPENDENCIES = true
GITEA_SERVICE_DEFAULT_ENABLE_TIMETRACKING = true
GITEA_SERVICE_DEFAULT_KEEP_EMAIL_PRIVATE = false
GITEA_SERVICE_DEFAULT_ORG_VISIBILITY = public
GITEA_SERVICE_DEFAULT_ORG_VISIBILITY = true
GITEA_SERVICE_DISABLE_REGISTRATION = false
GITEA_SERVICE_EMAIL_DOMAIN_WHITELIST =
GITEA_SERVICE_ENABLE_CAPTCHA = false
GITEA_SERVICE_ENABLE_NOTIFY_MAIL = false
GITEA_SERVICE_ENABLE_REVERSE_PROXY_AUTHENTICATION = false
GITEA_SERVICE_ENABLE_REVERSE_PROXY_AUTO_REGISTRATION = false
GITEA_SERVICE_ENABLE_REVERSE_PROXY_EMAIL = false
GITEA_SERVICE_ENABLE_TIMETRACKING = true
GITEA_SERVICE_ENABLE_USER_HEATMAP = true
GITEA_SERVICE_NO_REPLY_ADDRESS = noreply.example.org
GITEA_SERVICE_RECAPTCHA_SECRET =
GITEA_SERVICE_RECAPTCHA_SITEKEY =
GITEA_SERVICE_RECAPTCHA_URL = https://www.google.com/recaptcha/
GITEA_SERVICE_REGISTER_EMAIL_CONFIRM = false
GITEA_SERVICE_REQUIRE_SIGNIN_VIEW = false
GITEA_SERVICE_RESET_PASSWD_CODE_LIVE_MINUTES = 180
GITEA_SERVICE_SHOW_REGISTRATION_BUTTON = true
GITEA_SESSION_COOKIE_NAME = gitea
GITEA_SESSION_COOKIE_SECURE = false
GITEA_SESSION_ENABLE_SET_COOKIE = true
GITEA_SESSION_GC_INTERVAL_TIME = 86400
GITEA_SESSION_PATH = ${GITEA_BASE_PATH}/sessions
GITEA_SESSION_PROVIDER = memory
GITEA_SESSION_PROVIDER_CONFIG = ${GITEA_SESSION_PATH}
GITEA_SESSION_REDIS_DB = 1
GITEA_SESSION_REDIS_HOST = redis:6379
GITEA_SESSION_REDIS_IDLE_TIMEOUT = 180
GITEA_SESSION_REDIS_PASSWORD =
GITEA_SESSION_REDIS_POOL_SIZE = 100
GITEA_SESSION_SESSION_LIFE_TIME = 86400
GITEA_SESSION_WAIT_FOR_FAIL = true
GITEA_SKIP_CHOWN = false
GITEA_SSH_MINIMUM_KEY_SIZES_DSA = 1024
GITEA_SSH_MINIMUM_KEY_SIZES_ECDSA = 256
GITEA_SSH_MINIMUM_KEY_SIZES_ED25519 = 256
GITEA_SSH_MINIMUM_KEY_SIZES_RSA = 2048
GITEA_TASK_QUEUE_LENGTH = 1000
GITEA_TASK_QUEUE_REDIS_DB = 0
GITEA_TASK_QUEUE_REDIS_HOST = redis:6379
GITEA_TASK_QUEUE_REDIS_PASSWORD =
GITEA_TASK_QUEUE_TYPE = channel
GITEA_TIME_DEFAULT_UI_LOCATION =
GITEA_TIME_FORMAT =
GITEA_U2F_APP_ID = ${GITEA_SERVER_ROOT_URL}
GITEA_U2F_ENABLED = false
GITEA_U2F_TRUSTED_FACETS = ${GITEA_SERVER_ROOT_URL}
GITEA_UI_ADMIN_NOTICE_PAGING_NUM = 50
GITEA_UI_ADMIN_ORG_PAGING_NUM = 50
GITEA_UI_ADMIN_REPO_PAGING_NUM = 50
GITEA_UI_ADMIN_USER_PAGING_NUM = 50
GITEA_UI_CODE_COMMENT_LINES = 4
GITEA_UI_DEFAULT_SHOW_FULL_NAME = false
GITEA_UI_DEFAULT_THEME = gitea
GITEA_UI_EXPLORE_PAGING_NUM = 20
GITEA_UI_FEED_MAX_COMMIT_NUM = 5
GITEA_UI_GRAPH_MAX_COMMIT_NUM = 100
GITEA_UI_ISSUE_PAGING_NUM = 10
GITEA_UI_META_AUTHOR = Gitea - Git with a cup of tea
GITEA_UI_META_DESCRIPTION = Gitea (Git with a cup of tea) is a painless self-hosted Git service written in Go
GITEA_UI_META_KEYWORDS = go,git,self-hosted,gitea
GITEA_UI_SEARCH_REPO_DESCRIPTION = true
GITEA_UI_SHOW_USER_EMAIL = true
GITEA_UI_THEMES = gitea,arc-green
GITEA_UI_THEME_COLOR_META_TAG = 6cc644
GITEA_UI_USER_REPO_PAGING_NUM = 15
GITEA_WEBHOOK_DELIVER_TIMEOUT = 5
GITEA_WEBHOOK_PAGING_NUM = 10
GITEA_WEBHOOK_QUEUE_LENGTH = 1000
GITEA_WEBHOOK_SKIP_TLS_VERIFY = false
```


## Inherited environment variables

* [webhippie/alpine](https://github.com/dockhippie/alpine#available-environment-variables)


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)


## License

MIT


## Copyright

```
Copyright (c) 2015 Thomas Boerger <http://www.webhippie.de>
```
