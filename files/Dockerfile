FROM alpine:latest

RUN apk add build-base \
            cmake \
            coreutils \
            curl \
            unzip \
            gettext-tiny-dev

COPY --chmod=0755 docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["./docker-entrypoint.sh"]
