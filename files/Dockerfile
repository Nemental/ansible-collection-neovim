FROM debian:12

ARG UID
ARG USER=builder

RUN useradd -u $UID -ms /bin/bash $USER

RUN apt update && \
    apt install -y ninja-build gettext cmake unzip curl git

USER $USER
WORKDIR $HOME

COPY --chown=$UID docker-entrypoint.sh docker-entrypoint.sh
RUN chmod +x docker-entrypoint.sh

ENTRYPOINT ["./docker-entrypoint.sh"]
