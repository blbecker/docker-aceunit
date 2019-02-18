FROM ubuntu:bionic
LABEL maintainer="benjamin.becker@athenitas.com"

RUN apt-get update && \
	apt-get install -y curl && \
	curl -L "https://downloads.sourceforge.net/project/aceunit/aceunit/aceunit-0.12.0/AceUnit-0.12.0.jar?r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Faceunit%2Ffiles%2Flatest%2Fdownload&ts=1550073943" -o /root/aceunit.jar

RUN apt-get update && \
	apt-get -y install default-jre gcc git make pkg-config check && \
	apt-get -y upgrade
