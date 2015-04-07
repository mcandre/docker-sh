IMAGE=mcandre/docker-sh

all: run

build: Dockerfile
	docker build -t $(IMAGE) .

run: clean-containers build
	docker run -it $(IMAGE) bash

clean-containers:
	-docker ps -a | grep -v IMAGE | awk '{ print $$1 }' | xargs docker rm -f

clean-images:
	-docker images | grep -v IMAGE | grep $(IMAGE) | awk '{ print $$3 }' | xargs docker rmi -f

clean: clean-containers clean-images

publish:
	docker push $(IMAGE)
