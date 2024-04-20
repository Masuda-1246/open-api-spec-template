# Goの公式イメージをベースに使用します。
FROM golang:1.19

# 必要なパッケージ（oapi-codegen）をインストールします。
RUN go install github.com/deepmap/oapi-codegen/cmd/oapi-codegen@latest

# 作業ディレクトリを設定します。
WORKDIR /app

# ホストマシンからコンテナ内の作業ディレクトリにファイルをコピーします。
# 特にOpenAPIの定義ファイルをコピーします。
COPY ./OpenAPI.yml /app/OpenAPI.yml

# コンテナを起動したときに実行されるコマンドを指定します。
# OpenAPI定義からGoのコードを生成します。
CMD ["sh", "-c", "oapi-codegen -generate 'server' -package openapi ./OpenAPI.yml > ./go/server.gen.go && oapi-codegen -generate 'types' -package openapi ./OpenAPI.yml > ./go/types.gen.go && oapi-codegen -generate 'spec' -package openapi ./OpenAPI.yml > ./go/spec.gen.go"]
