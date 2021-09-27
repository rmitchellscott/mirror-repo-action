FROM alpine:latest

RUN apk update && apk upgrade && \
    apk add --no-cache git openssh

COPY mirror.sh /mirror.sh
COPY setup-ssh.sh /setup-ssh.sh

ENTRYPOINT ["/mirror.sh"]
