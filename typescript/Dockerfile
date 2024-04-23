# Node.jsの公式イメージをベースとして使用
FROM node:latest

# 作業ディレクトリを設定
WORKDIR /app

COPY OpenAPI.yml .

# 必要なパッケージをインストール
RUN npm install -D openapi-typescript@next typescript

# コンテナ起動時に openapi-typescript コマンドを実行
CMD ["npx", "openapi-typescript", "OpenAPI.yml", "-o", "typescript/type.d.ts"]
