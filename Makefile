all: build pull

build:
	docker build . -t ryht/irgsh
pull:
	docker pull ryht/irgsh
