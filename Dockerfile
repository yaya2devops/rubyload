# Use an official Ruby runtime as a parent image
FROM ruby:2.7

# Set the working directory to /app
WORKDIR /app

COPY . /app

RUN bundle install

EXPOSE 4567

ENV RACK_ENV production

CMD ["ruby", "app.rb"]
