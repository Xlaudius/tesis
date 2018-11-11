FROM ruby:2.5.1

RUN apt-get update -yqq
RUN apt-get install -yqq --no-install-recommends nodejs

COPY Gemfile* /usr/src/app/

WORKDIR /usr/src/app
COPY . /usr/src/app/
# Uncomment the following line when you are working on your local system
RUN bundle install

CMD ["bin/rails", "s", "-b", "0.0.0.0"]