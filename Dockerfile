FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
  make \
  automake \
  pkg-config \
  git \
  g++ \
  python \
  python-software-properties \
  software-properties-common

RUN apt-get update && apt-get install -y \
  libpcre3 libpcre3-dev \
  libcurl3 libcurl4-openssl-dev \
  libmysql++-dev \
  ftplib-dev \
  graphicsmagick-libmagick-dev-compat \
  cppcheck \
  python-pip python-dev build-essential \
  libyaml-cpp0.3-dev \
  libcgicc-dev \
  libboost-all-dev \
  libjsoncpp-dev

RUN add-apt-repository ppa:tista/build && apt-get update && apt-get install -y \
  rsync \
  sassc
