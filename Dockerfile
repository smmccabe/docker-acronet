FROM gcc

RUN git clone https://github.com/danmar/cppcheck.git \
  && cd cppcheck \
  && make install SRCDIR=build CFGDIR=/usr/share/cppcheck/cfg HAVE_RULES=yes CXXFLAGS="-O2 -DNDEBUG -Wall -Wno-sign-compare -Wno-unused-function" \
  && cd .. \
  && rm cppcheck -rf
