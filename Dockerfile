FROM ruby:2.5

RUN apt-get update && apt-get install -qq -y build-essential nodejs libpq-dev postgresql postgresql-contrib

WORKDIR app/

COPY Gemfile /app/Gemfile

COPY . /app/

RUN bundle install

EXPOSE 3000

RUN bundle exec rails s
