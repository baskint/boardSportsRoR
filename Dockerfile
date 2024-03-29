FROM ruby:3.0.2-alpine3.13
RUN apk update
RUN apk add --no-cache alpine-sdk postgresql-dev tzdata nodejs yarn
RUN gem install bundler
WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN bundle config build.nokogiri --use-system-libraries
RUN bundle check || bundle install
COPY package.json yarn.lock ./
RUN yarn install --check-files

COPY . ./
RUN chmod +x entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]