FROM ruby:2.5

RUN apt-get update && apt-get install -qq -y build-essential nodejs libpq-dev postgresql postgresql-contrib

WORKDIR app/

ADD . add/

RUN bundle install
