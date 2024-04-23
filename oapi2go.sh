cp OpenAPI.yml go
docker build -t oapi-codegen ./go
docker run --rm -v $(pwd):/app oapi-codegen