FROM node:10.13.0 AS build

RUN apt-get update && \
    apt-get install -y rsync && apt-get install -y openjdk-8-jre-headless && apt-get install -y chromedriver && \
    npm install -g bower && \
    npm install -g vue-cli && \
    npm install -g pm2 -g

RUN mkdir -p /var/www
