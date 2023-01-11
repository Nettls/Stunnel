FROM alpine:latest

RUN apk --no-cache add \
        stunnel \
        ca-certificates

COPY docker-entrypoint.sh /usr/local/bin/

CMD /usr/local/bin/docker-entrypoint.sh
