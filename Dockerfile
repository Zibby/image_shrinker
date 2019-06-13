FROM ruby:2.5
RUN apt-get update
RUN apt-get install -yf libmagickwand-dev

ENV APP_HOME /app
ENV HOME /root
RUN mkdir ${APP_HOME} 

COPY Gemfile ${APP_HOME}
COPY main.rb ${APP_HOME}
WORKDIR ${APP_HOME}

RUN bundle install
CMD ["bundle", "exec", "/app/main.rb"]