# memoris-dev

Memoris video game development container. Provision handled by Ansible.

## Properties

* Ubuntu 17.04 (Zesty)
* g++ 4.9 (for C++14 support)
* SFML 2.4.2
* cmake 3.7.2
* ZSH prompt (including oh-my-zsh)
* VIM profile optimized for C++11/14 edition

This project does not contain the Memoris project. You have to clone it separately. This is only the wrapper for development.

## Create the container

```
docker run --name memoris-dev -t -i -v {PATH_TO_THE_PROJECT}/Memoris:/Memoris jean553/memoris-dev /bin/zsh
```

The container will be started.

## Start the container

```
docker start memoris-dev
```

## Connect to the container

```
docker exec -it memoris-dev /bin/zsh
```

## Compile Memoris

Memoris can be compiled with CMake.

```
mkdir /Memoris/build && cd /Memoris/build
cmake ..
make
```
