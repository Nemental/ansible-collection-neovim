FROM debian:12

ARG UID=1000
ARG USER=builder

RUN useradd -u $UID -ms /bin/bash $USER && \
    mkdir ~/nvim

RUN apt update && \
    apt install -y ninja-build gettext cmake unzip curl git

USER $USER
WORKDIR ~

COPY --chown=$UID docker-entrypoint.sh docker-entrypoint.sh
RUN chmod +x docker-entrypoint.sh

ENTRYPOINT ["./docker-entrypoint.sh"]
