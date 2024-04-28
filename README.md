# open-api-spec-template

# OpenAPI url
https://open-api-spec-template.web.app

## ディレクトリ構成
```
.
├── Makefile
├── OpenAPI.yml
├── README.md
├── a.txt
├── firebase.json
├── go
│   ├── Dockerfile
│   ├── OpenAPI.yml
│   ├── server.gen.go
│   ├── spec.gen.go
│   └── types.gen.go
├── oapi2go.sh
├── oapi2ts.sh
├── openapitools.json
├── package-lock.json
├── package.json
├── server
│   ├── Dockerfile
│   ├── api
│   │   ├── go.mod
│   │   ├── go.sum
│   │   ├── main.go
│   │   └── openapi
│   │       ├── server.gen.go
│   │       ├── spec.gen.go
│   │       └── types.gen.go
│   └── docker-compose.yml
├── src
│   ├── examples
│   │   └── response.yml
│   ├── paths
│   │   ├── auth
│   │   │   └── login.yml
│   │   └── misc
│   │       └── health.yml
│   ├── responses
│   │   └── response.yml
│   ├── root.yml
│   ├── schemas
│   │   └── response.yml
│   └── tag.yml
├── typescript
│   ├── Dockerfile
│   ├── OpenAPI.yml
│   └── type.d.ts
└── view
    ├── 404.html
    ├── OpenAPI.yml
    ├── index.html
    ├── package-lock.json
    └── package.json
```

## 依存関係
- Docker
- Node.js
- npm

## 環境構築
```
make setup
```

## 使用方法
1. `src`ディレクトリに定義を追加する
2. `make gen`コマンドを実行する

## Makefile
- `make setup` : 環境構築
- `make gen` : OpenAPI定義, go, typescriptコード生成
- `make openap-gen` : OpenAPI定義生成
- `make go-gen` : goコード生成
- `make ts-gen` : typescriptコード生成