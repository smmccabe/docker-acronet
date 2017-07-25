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
  ftplib-dev \
  graphicsmagick-libmagick-dev-compat

RUN git clone https://github.com/danmar/cppcheck.git \
  && cd cppcheck \
  && make install SRCDIR=build CFGDIR=/usr/share/cppcheck/cfg HAVE_RULES=yes CXXFLAGS="-O2 -DNDEBUG -Wall -Wno-sign-compare -Wno-unused-function" \
  && cd .. \
  && rm cppcheck -rf
