FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

ENV GITEA_PATH github.com/go-gitea/gitea
ENV GITEA_REPO https://${GITEA_PATH}.git
ENV GITEA_BRANCH develop

ENV GOPATH /usr

RUN apk update && \
  apk add \
    build-base \
    git \
    go \
    openssh && \
  groupadd -r -g 1000 git && \
  useradd -r -m -p '*' -d /var/lib/gitea -s /bin/bash -u 1000 -g git git && \
  git clone -b ${GITEA_BRANCH} ${GITEA_REPO} ${GOPATH}/src/${GITEA_PATH} && \
  cd ${GOPATH}/src/${GITEA_PATH} && \
  go get -d ${GITEA_PATH}/... && \
  TAGS=cert,sqlite go run make.go deps bindata install && \
  apk del build-base go && \
  rm -rf /var/cache/apk/* && \
  rm -r \
    /usr/src/* \
    /usr/pkg/* \
    /usr/bin/go-bindata

VOLUME ["/var/lib/gitea", "/etc/ssh/keys"]

ADD rootfs /
EXPOSE 3000 22

WORKDIR /root
CMD ["/usr/bin/s6-svscan", "/etc/s6"]
