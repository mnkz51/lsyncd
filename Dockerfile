# syntax=docker/dockerfile:1.0-experimental

FROM alpine:3.9.4

RUN set -ex; \
        apk --no-cache update; \
        apk --no-cache add \
                lsyncd \
        ; \
        mkdir /var/log/lsyncd; \
        rm -rf /var/lib/apt/lists/*

COPY lsyncd.conf /etc/lsyncd

CMD [ "lsyncd", "/etc/lsyncd/lsyncd.conf" ]

# END
