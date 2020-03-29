FROM node:lts-alpine

ENV USER=tty
ENV GROUP=wheel
ENV UID=1000

RUN npm i -g @angular/cli

RUN apk add --no-cache firefox-esr chromium

RUN adduser -u ${UID} -G ${GROUP} -D ${USER}

RUN mkdir -p /usr/src/app

RUN chown -R ${USER}:${GROUP} /usr/src/app

USER ${USER}

ENV CHROME_BIN=/usr/bin/chromium-browser
ENV CHROME_PATH=/usr/lib/chromium/

RUN export NODE_OPTIONS=--max_old_space_size=8192

WORKDIR /usr/src/app
