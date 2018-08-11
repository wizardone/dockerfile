FROM ruby:2.5

RUN apt-get update && apt-get install -qq -y build-essential nodejs libpq-dev postgresql postgresql-contrib

COPY Gemfile* /tmp/
WORKDIR /tmp
RUN bundle install

ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . $APP_HOME

#RUN bundle install
RUN bundle exec rails s

#ENV app /app

#RUN mkdir $app
#WORKDIR $app
#ADD . $app

#RUN bundle install

#CMD rails s -b 0.0.0.0
