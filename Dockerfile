FROM ruby:2.3.3

RUN apt-get update -qq && apt-get install  -y build-essential libpq-dev nodejs
RUN mkdir /onenote 
WORKDIR /onenote
ADD Gemfile  /onenote/Gemfile
ADD Gemfile.lock /onenote/Gemfile.lock
RUN bundle install
ADD . /onenote
