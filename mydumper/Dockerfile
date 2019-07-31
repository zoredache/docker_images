FROM debian:buster-slim

RUN apt-get update ; \
    </dev/null DEBIAN_FRONTEND=noninteractive \
    apt-get install tini; \
    apt-get -yq install \
	mydumper

