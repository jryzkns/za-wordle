FROM ubuntu:18.04

WORKDIR .

# GET CURL
RUN apt-get update
RUN apt-get -y install curl

RUN curl -fsSL https://crystal-lang.org/install.sh | bash -s -- --channel=stable
