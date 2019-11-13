FROM alpine:latest

LABEL maintainer="Jason Harris<jiharris90@gmail.com>"

RUN apk update && apk add bash

# Install aws-cli
RUN apk -Uuv add groff less python py-pip
RUN pip install awscli
RUN apk add jq
RUN apk add zip
RUN apk --purge -v del py-pip
RUN rm /var/cache/apk/*
