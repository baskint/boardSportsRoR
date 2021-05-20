FROM ruby:3.0.1-alpine3.13
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /usr/src/boardsportsror
WORKDIR /usr/src/boardsportsror
ADD Gemfile /usr/src/boardsportsror/Gemfile
ADD Gemfile.lock /usr/src/boardsportsror/Gemfile.lock
RUN bundle install
ADD . /usr/src/boardsportsror
RUN RAILS_ENV=production bundle exec rake assets:precompile --trace