# Based on the pre-built CircleCI Node image.
# See https://circleci.com/docs/2.0/circleci-images/#nodejs
FROM circleci/node:7.10
LABEL maintainer="kerry@partender.com"

RUN sudo apt-get update \
	&& sudo apt-get install -y \
		ruby ruby-dev \
	&& sudo rm -rf /var/lib/apt/lists/*

RUN sudo gem install bundler
