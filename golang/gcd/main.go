package main

import (
	"bufio"
	"errors"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func gcd(n, m int) (int, error) {
	if n < 0 || m < 0 {
		return -1, errors.New("the given number is invalid")
	}

	if n > m {
		n, m = m, n
	}

	if n == 0 {
		return m, nil
	}

	return gcd(n, m%n)
}

func main() {
	reader := bufio.NewReader(os.Stdin)
	fmt.Print("input two integer number(comma separated) >")
	target, err := reader.ReadString('\n')
	if err != nil {
		fmt.Println("input may be invalid.")
		os.Exit(1)
	}
	target = strings.TrimSuffix(target, "\n")
	target = strings.ReplaceAll(target, " ", "")
	if !strings.Contains(target, ",") {
		fmt.Println("input comma")
		os.Exit(1)
	}

	arr := strings.Split(target, ",")
	n, err := strconv.Atoi(arr[0])
	if err != nil {
		fmt.Println("input number is invalid")
		os.Exit(1)
	}
	m, err := strconv.Atoi(arr[1])
	if err != nil {
		fmt.Println("input number is invalid")
		os.Exit(1)
	}

	result, err := gcd(n, m)
	if err != nil {
		os.Exit(1)
	}
	fmt.Printf("gcd is %v\n", result)
}
