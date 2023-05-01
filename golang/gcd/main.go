package main

import (
	"bufio"
	"errors"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func GCD(m, n int) (int, error) {
	if m < 0 || n < 0 {
		return -1, errors.New("the given number is invalid")
	}

	if n == 0 {
		return m, nil
	}

	return GCD(n, m%n)
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
	m, err := strconv.Atoi(arr[0])
	if err != nil {
		fmt.Println("input number is invalid")
		os.Exit(1)
	}
	n, err := strconv.Atoi(arr[1])
	if err != nil {
		fmt.Println("input number is invalid")
		os.Exit(1)
	}

	result, err := GCD(m, n)
	if err != nil {
		os.Exit(1)
	}
	fmt.Printf("gcd is %v\n", result)
}
