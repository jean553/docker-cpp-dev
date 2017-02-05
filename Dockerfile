# vim:set ft=dockerfile
FROM debian:jessie

# install ansible
RUN apt-get update -y
RUN apt-get install -y \
    python-dev \
    python-pip  \
    libffi-dev \
    libssl-dev

RUN pip install --upgrade \
    ansible \
    setuptools \
    packaging \
    pyparsing \
    appdirs

# copy the provisioning folder
COPY provisioning/ provisioning

RUN \
    # run ansible
    ansible-playbook provisioning/site.yml -c local
