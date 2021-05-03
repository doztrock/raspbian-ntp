FROM debian:latest

ENV DEBIAN_FRONTEND="noninteractive"

RUN apt-get update
RUN apt-get install -y apt-utils
RUN apt-get install -y ntp

COPY entrypoint.sh /entrypoint.sh
COPY ntp.conf /etc/ntp.conf

EXPOSE 123/udp

ENTRYPOINT /entrypoint.sh

