FROM node:lts-alpine

RUN apk add --no-cache firefox-esr chromium

RUN export NODE_OPTIONS=--max_old_space_size=8192
