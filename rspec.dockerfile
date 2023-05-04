FROM ruby:alpine
LABEL MAINTAINER Jamil Ahmed <me@jamilahmed.net>

RUN apk add --no-cache build-base ruby-nokogiri
RUN gem install rspec capybara selenium-webdriver
ENTRYPOINT [ "rspec" ]
