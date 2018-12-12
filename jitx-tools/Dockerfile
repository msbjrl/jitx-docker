FROM ubuntu

USER root

RUN \
  apt-get update && \
  apt-get --assume-yes install sudo build-essential autotools-dev automake flex bison cmake pkgconf g++ git libc++-dev libjpeg-dev zlib1g-dev libpng++-dev libpng-dev pngtools libgmp-dev curl libcurl4-gnutls-dev libcurlpp0 libcurlpp-dev libgles2-mesa-dev libglib2.0-dev-bin libglib2.0-dev libglu1-mesa-dev && \
  export DEBIAN_FRONTEND=noninteractive && apt-get --assume-yes install tcl tk

RUN \
  apt-get --assume-yes install python3-pip python3-pkgconfig python3-pycurl python3-numpy python3-scipy python3-tk

RUN \
  apt-get --assume-yes install python-pip python-pkgconfig python-pycurl python-numpy python-scipy python-tk

RUN \
  pip install svgwrite matplotlib

COPY PyYAML-3.13.tar.gz /tmp

RUN \
  cd /tmp && tar zxf PyYAML-3.13.tar.gz && cd PyYAML-3.13 && python setup.py install && python3 setup.py install && cd /tmp && rm -rf PyYAML-3.13 PyYAML-3.13.tar.gz
