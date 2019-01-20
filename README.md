# Docker PHP Environment Development

## Introduction
This repository is used to bootstrap the development environment for PHP.
The folder `services` resides the Docker configuration of the environment.
The folder `code` resides the codebase and used as working directory for the development.


## How To Use
The following case will create Laravel project as example.
1. Copy the `.env.example` file to `.env`. This file is used for Docker Compose to setup user/group permission on container.
2. Run `make clear-code` for first-time usage to clear the working directory. This allows the Laravel to be install in the folder.
3. Run `make create-laravel-project` to create Laravel project.
4. Run `make up` to start the container in detached mode.
5. Run `make down` to stop and remove the container.

## Available Make Commmand
```
make build
## build container
```
```
make up
## start container in detached mode
```
```
make down
## stop and remove container
```
```
make reset
## stop and remove container, then start the container back.
```
