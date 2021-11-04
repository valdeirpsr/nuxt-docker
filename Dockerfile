FROM node:16

RUN set -aux; \
    apt update; \
    apt install -y vim git httpie

WORKDIR /project

VOLUME /project
EXPOSE 3000

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]