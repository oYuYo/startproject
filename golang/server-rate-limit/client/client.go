package main

import (
	"fmt"
	"io"
	"net/http"
	"sync"
)

const (
	MaxConnections = 10 //最大同時接続数
	NumOfRequests  = 20 //リクエスト数
)

func main() {

	url := "http://localhost:8080/hello"

	ch := make(chan struct{}, MaxConnections)
	wg := sync.WaitGroup{}

	for i := 0; i < NumOfRequests; i++ {
		wg.Add(1)
		go func(reqId int) {
			defer wg.Done()

			ch <- struct{}{}
			defer func() {
				<-ch
			}()

			resp, err := http.Get(url)
			if err != nil {
				fmt.Printf("Request No.%d\tfailed: %v\n", reqId, err)
				return
			}
			defer resp.Body.Close()

			body, err := io.ReadAll(resp.Body)
			if err != nil {
				fmt.Println("Failed to read resonse body")
				return
			}
			fmt.Printf("Resonse %d\t%s:", reqId, string(body))

		}(i)
	}

	wg.Wait()
}
