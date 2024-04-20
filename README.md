# open-api-spec-template

## ディレクトリ構成
```
├── src/
│   ├── examples/ #サンプル定義
│   ├── paths/ #パス定義
│   ├── responses/ #レスポンス定義
│   ├── schemas/ #スキーマ定義
│   ├── root.yml #OpenAPIのルート定義
│   └── tags.yml #タグ定義
├── go/ #go用のアウトプットディレクトリ
├── typescript/ #typescript用のアウトプットディレクトリ
├── OpenAPI.yml #OpenAPI定義(出力されたファイル)
├── Makefile #Makefile
├── Dockerfile #Dockerfile
├── oapi2go.sh #openapiからgo言語生成するスクリプト
└── package.json #typescript用のパッケージファイル
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