FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
  crossbuild-essential-armhf \
  bc \
  git \
  libncurses5-dev \
  lzop \
  cifs-utils \
  psmisc \
  ssh \
  && rm -rf /var/lib/apt/lists/*

# Add ssh key and user
RUN mkdir /run/sshd
RUN ssh-keygen -A
# Danger: below used a simple password
RUN useradd -m -p $(openssl passwd -1 abc) abc
