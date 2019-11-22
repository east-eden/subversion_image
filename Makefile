v ?= latest

.PHONY: docker
docker: 
	docker build . -t subversion_image:latest


.PHONY: push
push:
	docker tag subversion_image hellodudu86/subversion_image:$(v)
	docker push hellodudu86/subversion_image:$(v)


