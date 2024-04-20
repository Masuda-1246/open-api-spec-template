# Define variables
DOCKER_IMAGE = my_docker_image

ROOT_FILE = src/root.yml
OPENAPI_FILE = OpenAPI.yml

DOCKER_CONTAINER_NAME = api-spec-oapi-codegen

GO_FILE = server.gen.go

.PHONY: generate_code
generate_code:
    docker run -v $(pwd):/app -w /app $(DOCKER_IMAGE) oapi-codegen -package "openapi" petstore.yaml > petstore.gen.go

.PHONY: setup
setup:
	npm install
	swagger-cli bundle -o $(OPENAPI_FILE) -t yaml $(ROOT_FILE)

.PHONY: gen
gen:
	swagger-cli bundle -o $(OPENAPI_FILE) -t yaml $(ROOT_FILE)


.PHONY: go-gen
go-gen:
	./oapi2go.sh

.PHONY: typescipt-gen
typescript-gen:
	npm run openapi-generate