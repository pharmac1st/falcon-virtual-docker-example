FROM ruby:3.4.1

COPY ./http/ /usr/http

WORKDIR /usr/http/

RUN bundle install

# Run each `falcon.rb` in `/http`
# falcon virtual manages each one
CMD ["falcon", "virtual", "/usr/http/*/falcon.rb"]
