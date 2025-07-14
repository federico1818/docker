 SHELL = /bin/sh

FOLDER     := $(shell pwd)
USER_ID    := $(shell id -u)
GROUP_ID   := $(shell id -g)

PHP_VERSION          := 8.4
LARAVEL_VERSION		 := 12.1.0
COMPOSER_IMAGE		 := composer:2.8.9

create:
	@docker run --rm -u $(USER_ID):$(GROUP_ID) -v "$(FOLDER):/app" -w /app $(COMPOSER_IMAGE) \
	/bin/sh -c 'mkdir /tmp/laravel-tmp && cd /tmp/laravel-tmp && \
	composer create-project laravel/laravel:"$(LARAVEL_VERSION)" . --prefer-dist && \
	cp -r . /app && cd / && rm -rf /tmp/laravel-tmp'

start:
	@USER_ID=$(USER_ID) GROUP_ID=$(GROUP_ID) docker-compose -f ./docker/docker-compose.yml -p laravel up -d

stop:
	@USER_ID=$(USER_ID) GROUP_ID=$(GROUP_ID) docker-compose -f ./docker/docker-compose.yml -p laravel down

in:
	@docker exec -it -u $(USER_ID):$(GROUP_ID) laravel-php bash