FROM ubuntu
MAINTAINER Feanil

RUN apt-get update
RUN apt-get install -y nodejs libsqlite3-dev postgresql postgresql-client libpq5 libpq-dev ruby-dev build-essential git-core
RUN apt-get install -y bundler

RUN git clone https://github.com/feanil/my-life-aquatic.git
WORKDIR my-life-aquatic

RUN bundle install
CMD rails server
