FROM ruby:2.5-alpine

RUN apk update && apk add build-base nodejs postgresql-dev
ENV RAILS_ROOT /var/www/linode_test
RUN mkdir -p $RAILS_ROOT
WORKDIR $RAILS_ROOT
ENV RAILS_ENV='production'
ENV RAKE_ENV='production'

# RUN mkdir /app
# WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install --binstubs

COPY . .

# RUN bundle exec rake assets:precompile
EXPOSE 3000

CMD puma -C config/puma.rb
