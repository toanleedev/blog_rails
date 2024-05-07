FROM ruby:3.1.2

WORKDIR /myblog

COPY Gemfile Gemfile.lock ./

ENV BUNDLE_VERSION 2.4.22

RUN gem install bundler --version "$BUNDLE_VERSION"

RUN bundle install

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0", "-e", "production"]
