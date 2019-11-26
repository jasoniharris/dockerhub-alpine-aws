FROM alpine:latest

LABEL maintainer="Jason Harris<jiharris90@gmail.com>"

RUN apk update && apk add bash

# Install aws-cli
RUN apk -Uuv add groff less python py-pip
RUN pip install awscli
RUN apk add jq
RUN apk add zip
RUN apk add --no-cache git
RUN apk add --no-cache openssh-client
RUN git clone https://github.com/tfutils/tfenv.git ~/.tfenv
RUN ln -s ~/.tfenv/bin/* /usr/local/bin
RUN apk --purge -v del py-pip
RUN rm /var/cache/apk/*