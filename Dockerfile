FROM ruby:alpine
COPY dora.rb /usr/src/dora.rb
ENTRYPOINT ["/usr/src/dora.rb"]
