FROM alpine:3.12.1

RUN apk add --virtual essentials git openssh tar gzip ca-certificates

ENV HELM_VERSION=3.4.1

RUN apk add --virtual setup curl;\
  cd /bin;\
  curl -sSL https://get.helm.sh/helm-v${HELM_VERSION}-linux-amd64.tar.gz | tar --extract --gunzip --strip-components=1;\
  apk del setup
