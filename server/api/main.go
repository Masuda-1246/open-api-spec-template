package main

import (
	"net/http"
	"github.com/labstack/echo/v4"
	"github.com/labstack/echo/v4/middleware"
	"example.com/openapi" // パッケージ名に注意してください。生成されたサーバーコードのパッケージ名に合わせてください。
)

type Server struct{}

// Login implements the login operation.
func (s *Server) Login(ctx echo.Context) error {
	// 実装するロジック
	return ctx.String(http.StatusOK, "Login successful")
}

// CheckHealthy implements the health check operation.
func (s *Server) CheckHealthy(ctx echo.Context) error {
	// 実装するロジック
	return ctx.String(http.StatusOK, "Everything is healthy")
}

func main() {
	e := echo.New()
	e.Use(middleware.Logger())
	e.Use(middleware.Recover())

	server := &Server{}

	// ルートを登録します
	openapi.RegisterHandlers(e, server)

	// サーバーを起動します
	e.Logger.Fatal(e.Start(":8080"))
}
