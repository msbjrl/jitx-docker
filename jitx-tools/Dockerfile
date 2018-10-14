FROM ubuntu

USER root

RUN \
  apt-get update && \
  apt-get --assume-yes install build-essential autotools-dev automake flex bison g++ libc++-dev cmake pkgconf python3-pkgconfig python-pkgconfig libjpeg-dev zlib1g-dev libpng++-dev libpng-dev pngtools libgmp-dev curl libcurl4-gnutls-dev libcurlpp0 libcurlpp-dev python3-pycurl python-pycurl libgles2-mesa-dev libglib2.0-dev-bin libglib2.0-dev libglu1-mesa-dev

RUN \
  apt-get --assume-yes install python-numpy python-scipy python3-numpy python3-scipy sudo

RUN \
  apt-get --assume-yes install python-pip python3-pip
