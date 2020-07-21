FROM node:10.15.0-stretch

ENV DEBIAN_FRONTEND=noninteractive \
    DEBCONF_NONINTERACTIVE_SEEN=true

RUN apt-get update && \
    apt-get install -y rsync openjdk-8-jre-headless chromedriver xvfb libgtk-3-0 && \
    rm -r /var/lib/apt/lists/*

RUN yarn global add bower && \
    yarn global add vue-cli && \
    yarn global add pm2 -g

RUN mkdir -p /var/www
