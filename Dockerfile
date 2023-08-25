FROM ubuntu:16.04

RUN apt install crossbuild-essential-armhf
RUN apt-get install bc
RUN apt-get install libncurses5-dev
RUN apt-get install lzop

