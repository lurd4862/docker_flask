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
	docker run -d -p 56733:80 \
	--name=${app} \
	-v $PWD:/app ${app}

## stop container
stop:
	docker stop --name=${app}

## open bash shell into container as root user
bash:
	docker exec -it --name=${app} bash
	

