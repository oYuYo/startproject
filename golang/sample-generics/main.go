package main

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

func main() {
	ints := []int{1, 2, 3, 4, 5}
	fmt.Println("Sum1 by ints result -> ", Sum1[int](ints))
	fmt.Println("Sum2 by ints result -> ", Sum2[int](ints))

	floats := []float64{1.1, 2.2, 4.4, 10.0, 13.0}
	fmt.Println("Sum1 by floats result -> ", Sum1[float64](floats))
	fmt.Println("Sum2 by floats result -> ", Sum2[float64](floats))

	strs := []string{"a", "b", "c"}
	Display[int](ints)
	Display[float64](floats)
	Display[string](strs)
}
