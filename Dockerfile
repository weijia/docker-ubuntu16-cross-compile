FROM ubuntu:16.04

RUN apt install crossbuild-essential-armhf
RUN apt-get install bc
RUN apt-get install libncurses5-dev
RUN apt-get install lzop


# Add cifs
RUN apt install cifs-utils psmisc

# Add sshd
RUN apt install ssh
