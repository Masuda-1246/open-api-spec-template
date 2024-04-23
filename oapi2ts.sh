# npm run openapi-generate
# # 不要なファイルを削除
# rm typescript/.openapi-generator/* typescript/.gitignore typescript/.npmignore typescript/git_push.sh typescript/.openapi-generator-ignore


cp OpenAPI.yml typescript
docker build -t ts-type-gen ./typescript
docker run --rm -v $(pwd):/app ts-type-gen