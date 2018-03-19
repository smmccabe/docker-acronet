FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
  make \
  automake \
  pkg-config \
  git \
  g++ \
  python \
  libpcre3 libpcre3-dev \
  rsync \
  libcurl3 libcurl4-openssl-dev \
  libmysql++-dev \
  ftplib-dev \
  graphicsmagick-libmagick-dev-compat \
  cppcheck \
  python-pip python-dev build-essential \
  libyaml-cpp0.3-dev \
  libcgicc-dev \
  libboost-add-dev \
  libjsoncpp-dev \
  npm
