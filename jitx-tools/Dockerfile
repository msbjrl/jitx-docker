FROM ubuntu

USER root

RUN \
  apt-get update && \
  apt-get --assume-yes install sudo build-essential autotools-dev automake flex bison cmake pkgconf g++ git libc++-dev libjpeg-dev zlib1g-dev libpng++-dev libpng-dev pngtools libgmp-dev curl libcurl4-gnutls-dev libcurlpp0 libcurlpp-dev libgles2-mesa-dev libglib2.0-dev-bin libglib2.0-dev libglu1-mesa-dev

RUN \
  apt-get --assume-yes install python3-pip python3-pkgconfig python3-pycurl python3-numpy python3-scipy

RUN \
  apt-get --assume-yes install python-pip python-pkgconfig python-pycurl python-numpy python-scipy
