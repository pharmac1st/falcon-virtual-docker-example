FROM ruby:3.4.1

COPY ./http/ /srv/http

WORKDIR /srv/http/

RUN bundle install

# Run each `falcon.rb` in `/http`
# falcon virtual manages each one
CMD ["falcon", "virtual", "/srv/http/*/falcon.rb"]
