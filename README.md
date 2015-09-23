# Gitea

[![](https://badge.imagelayers.io/webhippie/gitea:latest.svg)](https://imagelayers.io/?images=webhippie/gitea:latest 'Get your own badge on imagelayers.io')

These are docker images for [Gitea](https://github.com/go-gitea/gitea) running on an
[Alpine Linux container](https://registry.hub.docker.com/u/webhippie/alpine/).


## Usage

```bash
docker run -ti \
  --name gitea \
  webhippie/gitea:latest
```


## Versions

* [latest](https://github.com/dockhippie/gitea/tree/master)
  available as ```webhippie/gitea:latest``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/gitea/)


## Available environment variables

```bash
ENV GITEA_APP_NAME Gitea
ENV GITEA_RUN_MODE prod
ENV GITEA_SERVER_PROTOCOL http
ENV GITEA_SERVER_DOMAIN localhost
ENV GITEA_SERVER_ADDR 0.0.0.0
ENV GITEA_SERVER_PORT 3000
ENV GITEA_SSH_DISABLE false
ENV GITEA_SSH_PORT 22
ENV GITEA_OFFLINE_MODE true
ENV GITEA_ROUTERLOG_DISABLE false
ENV GITEA_CERT_FILE # As string or filename
ENV GITEA_KEY_FILE # As string or filename
ENV GITEA_GZIP_ENABLE false
ENV GITEA_LANDING_PAGE home
ENV GITEA_DATABASE_TYPE sqlite3
ENV GITEA_DATABASE_PATH /var/lib/gitea/data/gitea.db
ENV GITEA_DATABASE_HOST
ENV GITEA_DATABASE_NAME
ENV GITEA_DATABASE_USERNAME
ENV GITEA_DATABASE_PASSWORD
ENV GITEA_DATABASE_SSLMODE disable
ENV GITEA_REGISTER_CONFIRM false
ENV GITEA_DISABLE_REGISTER false
ENV GITEA_REQUIRE_SINGIN false
ENV GITEA_CACHE_AVATAR false
ENV GITEA_NOTIFY_MAIL false
ENV GITEA_REVERSE_PROXY_AUTH false
ENV GITEA_REVERSE_PROXY_REGISTER false
ENV GITEA_DISABLE_KEYSIZE_CHECK false
ENV GITEA_WEBHOOK_QUEUE_LENGTH 1000
ENV GITEA_WEBHOOK_DELIVER_TIMEOUT 5
ENV GITEA_WEBHOOK_SKIP_VERIFY false
ENV GITEA_MAILER_ENABLED false
ENV GITEA_MAILER_SUBJECT $GITEA_APP_NAME
ENV GITEA_MAILER_HOST 
ENV GITEA_MAILER_HELO_DISABLE
ENV GITEA_MAILER_HELO_HOST
ENV GITEA_MAILER_SKIP_VERIFY
ENV GITEA_MAILER_USE_CERT false
ENV GITEA_MAILER_CERT_FILE # As string or filename
ENV GITEA_MAILER_KEY_FILE # As string or filename
ENV GITEA_MAILER_FROM Gitea <gitea@example.com>
ENV GITEA_MAILER_USERNAME
ENV GITEA_MAILER_PASSWORD
ENV GITEA_OAUTH_ENABLED false
ENV GITEA_GITHUB_ENABLED false
ENV GITEA_GITHUB_CLIENT
ENV GITEA_GITHUB_SECRET
ENV GITEA_GITHUB_SCOPES https://api.github.com/user
ENV GITEA_GITHUB_AUTH https://github.com/login/oauth/authorize
ENV GITEA_GITHUB_TOKEN https://github.com/login/oauth/access_token
ENV GITEA_GOOGLE_ENABLED false
ENV GITEA_GOOGLE_CLIENT
ENV GITEA_GOOGLE_SECRET
ENV GITEA_GOOGLE_SCOPES https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/userinfo.profile
ENV GITEA_GOOGLE_AUTH https://accounts.google.com/o/oauth2/auth
ENV GITEA_GOOGLE_TOKEN https://accounts.google.com/o/oauth2/token
ENV GITEA_QQ_ENABLED false
ENV GITEA_QQ_CLIENT
ENV GITEA_QQ_SECRET
ENV GITEA_QQ_SCOPES get_user_info
ENV GITEA_QQ_AUTH https://graph.qq.com/oauth2.0/authorize
ENV GITEA_QQ_TOKEN https://graph.qq.com/oauth2.0/token
ENV GITEA_WEIBO_ENABLED false
ENV GITEA_WEIBO_CLIENT
ENV GITEA_WEIBO_SECRET
ENV GITEA_WEIBO_SCOPES all
ENV GITEA_WEIBO_AUTH https://api.weibo.com/oauth2/authorize
ENV GITEA_WEIBO_TOKEN https://api.weibo.com/oauth2/access_token
ENV GITEA_CACHE_ADAPTER memory
ENV GITEA_CACHE_HOST
ENV GITEA_SESSION_PROVIDER memory
ENV GITEA_SESSION_CONFIG
ENV GITEA_COOKIE_NAME gitea-session
ENV GITEA_COOKIE_SECURE false
ENV GITEA_COOKIE_ENABLE true
ENV GITEA_GC_INTERVAL 86400
ENV GITEA_SESSION_LIFETIME 86400
ENV GITEA_PICTURE_SERVICE server
ENV GITEA_GRAVATAR_DISABLE false
ENV GITEA_GRAVATAR_SOURCE gravatar
ENV GITEA_ATTACHMENT_TYPES image/jpeg|image/png
ENV GITEA_ATTACHMENT_SIZE 32
ENV GITEA_ATTACHMENT_FILES 10
ENV GITEA_TIME_FORMAT RFC1123
ENV GITEA_LOG_LEVEL Trace
ENV GITEA_GITFSCK_ENABLE true
ENV GITEA_GITFSCK_INTERVAL 24
ENV GITEA_GITFSCK_ARGS
ENV GITEA_FOOTER_BRANDING false
ENV GITEA_INSTALL_LOCK true
ENV GITEA_LOGIN_REMEMBER 7 
ENV GITEA_COOKIE_USERNAME gitea-awesome
ENV GITEA_COOKIE_REMEMBER gitea-remember
ENV GITEA_REVERSE_PROXY_USER X-WEBAUTH-USER
ENV GITEA_SECRET_KEY # Generated or provide it
```


## Inherited environment variables

```bash
ENV LOGSTASH_ENABLED false
ENV LOGSTASH_HOST logstash
ENV LOGSTASH_PORT 5043
ENV LOGSTASH_CA /etc/ssl/logstash/certs/ca.pem # As string or filename
ENV LOGSTASH_CERT /etc/ssl/logstash/certs/cert.pem # As string or filename
ENV LOGSTASH_KEY /etc/ssl/logstash/private/cert.pem # As string or filename
ENV LOGSTASH_TIMEOUT 15
ENV LOGSTASH_OPTS
```


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
