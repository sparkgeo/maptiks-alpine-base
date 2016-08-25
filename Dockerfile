FROM alpine

RUN apk update && apk upgrade \
  && apk add ca-certificates py-pip \
  && rm -rf /var/cache/apk/*

RUN pip install dumb-init

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
