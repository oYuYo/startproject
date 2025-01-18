package example

import "fmt"

func SumInts(nums []int) int {
	var sum int
	for _, v := range nums {
		sum += v
	}
	return sum
}

func SumFloats(nums []float64) float64 {
	var sum float64
	for _, v := range nums {
		sum += v
	}
	return sum
}

func Sum1[T int | float64](nums []T) T {
	var sum T
	for _, v := range nums {
		sum += v
	}
	return sum
}

type Numeric interface {
	int | float64
}

func Sum2[T Numeric](nums []T) T {
	var sum T
	for _, v := range nums {
		sum += v
	}
	return sum
}

func Display[T any](nums []T) {
	for _, v := range nums {
		fmt.Println(v)
	}
}
