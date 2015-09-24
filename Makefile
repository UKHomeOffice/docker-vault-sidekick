
NAME=vault-sidekick
AUTHOR=UKHomeOffice

.PHONY: build test

default: build

build:
	sudo docker build -t ${AUTHOR}/${NAME} .

test:
	sudo docker run -ti --rm ${AUTHOR}/${NAME} $@
