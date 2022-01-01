FROM ruby:3.0.3
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    default-mysql-client \
    yarn \
    bash

WORKDIR /api
COPY Gemfile Gemfile.lock /api/
ENV BUNDLE_APP_CONFIG /api/bin/bundle
RUN bundle install