# Define variables
ROOT_FILE = src/root.yml
OPENAPI_FILE = OpenAPI.yml

.PHONY: setup
setup:
	npm install

.PHONY: gen
gen:
	make openapi-gen
	make go-gen
	make ts-gen

.PHONY: openapi-gen
openapi-gen:
	swagger-cli bundle -o $(OPENAPI_FILE) -t yaml $(ROOT_FILE)

.PHONY: go-gen
go-gen:
	./oapi2go.sh

.PHONY: ts-gen
ts-gen:
	./oapi2ts.sh