FROM ruby:2.5

RUN apt-get update && apt-get install -qq -y build-essential nodejs libpq-dev postgresql postgresql-contrib

ENV APP_HOME /app
WORKDIR $APP_HOME

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock

RUN bundle install
COPY . $APP_HOME

CMD ["bundle exec rails s -p 3000"]
