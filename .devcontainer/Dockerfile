FROM node:18.9-alpine3.16

WORKDIR /usr/bin

COPY docker-entrypoint.sh ./

RUN chmod +x docker-entrypoint.sh

RUN npm install -g @quasar/cli@1.3.2

CMD [ "/usr/bin/docker-entrypoint.sh" ]