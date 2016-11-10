all: build push
build:
	docker build . -t ryht/ubuntu:lucid-update
push:
	docker push ryht/ubuntu:lucid-update
