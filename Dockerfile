FROM alpine:latest

RUN apk --no-cache add \
        stunnel \
        ca-certificates

COPY entrypoint.sh /usr/local/bin/

CMD /usr/local/bin/entrypoint.sh
