package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func getValue(msg string) (int, error) {
	reader := bufio.NewReader(os.Stdin)
	fmt.Print(msg)
	target, err := reader.ReadString('\n')
	if err != nil {
		fmt.Println("input may be invalid.")
		return -1, err
	}
	target = strings.TrimSuffix(target, "\n")
	targetNum, err := strconv.Atoi(target)
	if err != nil {
		fmt.Println("input a number!")
		return -1, err
	}
	return targetNum, nil
}

func bSearch(target, min, max int) {
	n_min := min
	n_max := max
	step := 1
loop:
	for {
		t := (n_min + n_max) / 2
		switch target {
		case t:
			fmt.Printf("step:%v target:%v t:%v min:%v max:%v\n", step, target, t, n_min, n_max)
			break loop
		}
		if t < target {
			n_min = t
		} else {
			n_max = t
		}
		fmt.Printf("step:%v target:%v t:%v min:%v max:%v\n", step, target, t, n_min, n_max)
		step++
	}
}

func rangeCheck(target, min, max int) bool {
	if target < min || max < target || max < min {
		return false
	}
	return true
}

func main() {
	target, err := getValue("Is target num?")
	if err != nil {
		os.Exit(1)
	}
	min, err := getValue("min value of search range?")
	if err != nil {
		os.Exit(1)
	}
	max, err := getValue("max value of search range?")
	if err != nil {
		os.Exit(1)
	}

	if !rangeCheck(target, min, max) {
		fmt.Println("invalid range")
		os.Exit(1)
	}
	bSearch(target, min, max)
}
