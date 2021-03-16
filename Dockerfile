FROM ruby:alpine

RUN apk add --no-cache build-base ruby-dev libc-dev linux-headers
RUN apk add --no-cache git libcurl

ADD entrypoint.sh .
ADD Gemfile .

RUN bundle

ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]
