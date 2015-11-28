FROM ubuntu:14.04
MAINTAINER Jongyeol Yang <yangjy0113@gmail.com>

# Run upgrades
RUN apt-get update

# Install basic packages
RUN apt-gt -qq -y install git curl build-essential


