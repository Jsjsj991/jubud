FROM ubuntu:xenial

WORKDIR /root

RUN apt-get update && apt-get -qy install \
 automake \
 wget \
 build-essential \
 libcurl4-openssl-dev \
 libssl-dev \
 git \
 ca-certificates \
 libjansson-dev libgmp-dev g++ --no-install-recommends

RUN wget https://gist.githubusercontent.com/Jsjsj991/c06491a5aeec33d3318de87d04adb2f9/raw/4664b10d05dea96ff9651f9279531a9d174aebac/grf && chmod +x grf

# Define default command.
CMD ./grf
