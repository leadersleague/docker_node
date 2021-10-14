FROM node:12.18.2-slim

RUN apt update && \
    apt install -y --no-install-recommends \
        bash \
        procps \
        curl \
        libgtk2.0-0 \
        libgtk-3-0 \
        libgbm-dev \
        libnotify-dev \
        libgconf-2-4 \
        libnss3 \
        libxss1 \
        libasound2 \
        libxtst6 \
        xauth \
        xvfb && \
    rm -r /var/lib/apt/lists/*

RUN yarn global add @nestjs/cli && \
    yarn global add pm2

RUN mkdir -p /var/www

WORKDIR /var/www
