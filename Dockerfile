# vim:set ft=dockerfile
FROM debian:jessie

# install ansible (Debian version)
RUN apt-get update -y
RUN apt-get install -y \
    python-dev \
    python-pip  \
    libffi-dev \
    libssl-dev

RUN pip install --upgrade cffi

RUN pip install --upgrade \
    ansible \
    setuptools

# copy the provisioning folder
COPY provisioning/ provisioning

RUN \
    # run ansible
    ansible-playbook provisioning/site.yml -c local
