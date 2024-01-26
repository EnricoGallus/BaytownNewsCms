FROM ruby:3.2.2

WORKDIR /app

RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash -
RUN apt-get update -qq && apt-get install -y nodejs yarn postgresql-client

COPY Gemfile Gemfile.lock /app/

RUN bundle install

COPY . /app/

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]