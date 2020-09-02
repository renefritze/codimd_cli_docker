FROM alpine:3.12

RUN apk add -U curl bash git && \
  git clone https://github.com/codimd/cli /cli && \
  cd /cli/bin && \
  ln -s /cli/bin/codimd /usr/local/bin/codimd

VOLUME ["/output"]
WORKDIR /output
