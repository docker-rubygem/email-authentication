FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.2.5

RUN gem install email-authentication --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["emailcheck.rb"]
CMD ["--help"]
