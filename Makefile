all: build pull

build:
	docker build . -t ryht/irgsh:irgsh-web
pull:
	docker pull ryht/irgsh:irgsh-web
