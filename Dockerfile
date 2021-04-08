FROM ruby:2.6.3
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install
COPY . /app

RUN gem install bundler -v '2.1.4'


EXPOSE 3001

CMD ["rails", "s", "-p", "3001", "-b", "0.0.0.0"]