#################################################################################
# GLOBALS                                                                       #
#################################################################################

PROJECT_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

app="feature_service"

PWD=`pwd`

project := $(shell basename $$PWD)

#################################################################################
# ROUTINES
#################################################################################

## build image and run container
run:
	docker build -t ${app} .
	docker run -p 80:80 -t \
	--name=${app} \
	-v ${PWD}/app:/app ${app}

## stop container
stop:
	docker stop ${app} && \
	docker rm ${app}

## open bash shell into container as root user
bash:
	docker exec -it --name=${app} bash

