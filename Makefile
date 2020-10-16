
CONTAINER_NAME = codelab

.PHONY: *

.ONESHELL:
run:
	docker run \
		-d \
		-p8886:8888 \
		--name $(CONTAINER_NAME) \
		-v $(shell pwd):/home/jovyan \
		registry.nlp-utils/utils/jupyter:2.3.0-gpu

.ONESHELL:
shell:
	docker exec -it $(CONTAINER_NAME) zsh
