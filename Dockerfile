FROM ruby:2.6.6

WORKDIR /tmp

COPY ./Gemfile /tmp 
COPY ./Gemfile.lock /tmp

RUN bundle install

WORKDIR /home/app

COPY . /home/app

CMD bundle exec rails s -p 3000 -b '0.0.0.0'