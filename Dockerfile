FROM ubuntu:16.04

RUN apt install crossbuild-essential-armhf
RUN apt-get install bc
RUN apt-get install libncurses5-dev
RUN apt-get install lzop


# Add cifs
RUN apt install cifs-utils psmisc

# Add sshd
RUN apt install ssh
RUN mkdir /run/sshd
RUN ssh-keygen -A
# Danger: below used a simple password
RUN useradd -m -p $(openssl passwd -1 abc) abc
