FROM node:16
LABEL org.opencontainers.image.source https://github.com/valdeirpsr/nuxt-docker

RUN set -aux; \
    apt update; \
    apt install -y vim git httpie

WORKDIR /project

VOLUME /project
EXPOSE 3000

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]