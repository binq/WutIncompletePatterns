FROM ubuntu:20.04

RUN true                                            \
    && apt-get update                               \
    && apt-get install -y                           \
         curl                                       \
    && apt-get clean                                \
    && curl -sSL https://get.haskellstack.org/ | sh

WORKDIR /app
