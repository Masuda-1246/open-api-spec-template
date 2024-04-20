docker build -t oapi-codegen .
docker run --rm -v $(pwd):/app oapi-codegen