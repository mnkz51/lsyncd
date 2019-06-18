# syntax=docker/dockerfile:1.0-experimental

FROM alpine:3.9.4

RUN set -ex; \
        apk --no-cache update; \
        apk --no-cache add \
                lsyncd \
        ;

ENTRYPOINT [ "lsyncd", "-nodaemon", "-delay", "1" ]

# END
