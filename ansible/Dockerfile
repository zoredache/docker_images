FROM debian:buster

LABEL maintainer="zoredache@gmail.com"

RUN apt-get update && \
    </dev/null DEBIAN_FRONTEND=noninteractive \
    apt-get --yes install  --no-install-recommends \
      gawk procps openssh-client git build-essential krb5-user libkrb5-dev lsb-release \
      python3-dev python3-netaddr python3-pip python3-setuptools python3-wheel \
      python3-passlib rsync \
      sshpass virtualenv etckeeper sudo && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN </dev/null adduser --quiet --disabled-password --gecos '' --uid 1000 ansible

COPY ./config /etc/ansible
RUN pip3 install --requirement /etc/ansible/requirements.txt && \
    rm -r ~/.cache/pip/

# until this is fixed https://github.com/fboender/ansible-cmdb/issues/189
COPY ./ansible-cmdb /usr/local/bin/ansible-cmdb

USER 1000
CMD ["/usr/local/bin/ansible-playbook","--version"]

