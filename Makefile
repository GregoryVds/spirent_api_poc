all: spirent

petstore:
	./generate.sh petstore.yaml
	$(MAKE) build

spirent:
	./generate.sh spirent.yaml
	$(MAKE) build

.PHONY:
build:
	go build .

.PHONY: clean
clean:
	sudo rm -rf openapi spirent petstore
