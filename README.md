# docker-cpp-dev

Memoris video game development container. Provision handled by Ansible.

## Properties

* Ubuntu 14.04 LTS (Trusty)
* clang 3.4
* SFML 2.1
* cmake 2.8
* ZSH prompt (including oh-my-zsh)
* VIM profile optimized for C++11/14 edition

This project does not contain the Memoris project. You have to clone it separately. This is only the wrapper for development.

## Create the container

```
docker run --name memoris-docker -t -i -v {PATH_TO_THE_PROJECT}/Memoris:/Memoris jean553/docker-cpp-dev /bin/zsh
```

The container will be started.

## Start the container

```
docker start memoris-docker
```
