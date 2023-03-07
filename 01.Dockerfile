FROM debian:jessie

RUN apt-get update
RUN apt-get install -y --force-yes curl openssl git wget samba nginx