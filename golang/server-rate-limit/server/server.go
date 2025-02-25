package main

import (
	"fmt"
	"net/http"
	"sync"
	"time"

	"github.com/gin-gonic/gin"
)

const (
	limit     = 1 //1minあたりの最大リクエスト数
	resetTime = 1 * time.Minute
)

var (
	clients = make(map[string]int)
	mu      sync.Mutex
)

// rateLimit クライアントのIPごとにリクエスト数を制限するミドルウェア
func rateLimit() gin.HandlerFunc {
	return func(c *gin.Context) {
		clientIP := c.ClientIP()
		fmt.Printf("IP:%s\n", clientIP)
		mu.Lock()
		defer mu.Unlock()

		clients[clientIP]++
		if clients[clientIP] == 1 {
			go func(ip string) {
				time.Sleep(resetTime)
				mu.Lock()
				delete(clients, ip)
				mu.Unlock()
			}(clientIP)
		}

		if clients[clientIP] > limit {
			c.JSON(http.StatusTooManyRequests, gin.H{"error": "Too Many Requests\n"})
			c.Abort()
			return
		}
	}
}

const maxConnections = 1

var sem = make(chan struct{}, maxConnections)

// connectionLimit サーバー全体の同時接続数を制限するミドルウェア
func connectionLimit() gin.HandlerFunc {
	return func(c *gin.Context) {
		select {
		case sem <- struct{}{}:
			defer func() {
				<-sem
			}()
			time.Sleep(5 * time.Second)
			c.Next()
		default:
			c.JSON(http.StatusServiceUnavailable, gin.H{"error": "Server is too busy. Try again later.\n"})
			c.Abort()
		}
	}
}

func hello(c *gin.Context) {
	c.IndentedJSON(http.StatusOK, gin.H{"message": "hello."})
}

func setupRouter() *gin.Engine {
	router := gin.Default()
	//router.Use(rateLimit())
	router.Use(connectionLimit())
	router.GET("/hello", hello)
	return router
}

func main() {
	router := setupRouter()

	router.Run(":8080")
}
