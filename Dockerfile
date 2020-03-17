FROM node:10.13.0 AS build

RUN apt-get update && \
    apt-get install -y rsync openjdk-8-jre-headless chromedriver xvfb libgtk-3-0 && \
    rm -r /var/lib/apt/lists/* && \
    npm install -g bower && \
    npm install -g vue-cli && \
    npm install -g pm2 -g

RUN mkdir -p /var/www
