FROM alpine

RUN apk update && apk upgrade && apk add ca-certificates py-pip wget

RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64
RUN chmod +x /usr/local/bin/dumb-init

RUN apk del wget && rm -rf /var/cache/apk/*

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
