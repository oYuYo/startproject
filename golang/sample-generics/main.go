package main

import (
	e "example/generics/example"
	"fmt"
)

func main() {
	ints := []int{1, 2, 3, 4, 5}
	fmt.Println("Sum1 by ints result -> ", e.Sum1[int](ints))
	fmt.Println("Sum2 by ints result -> ", e.Sum2[int](ints))

	floats := []float64{1.1, 2.2, 4.4, 10.0, 13.0}
	fmt.Println("Sum1 by floats result -> ", e.Sum1[float64](floats))
	fmt.Println("Sum2 by floats result -> ", e.Sum2[float64](floats))

	strs := []string{"a", "b", "c"}
	e.Display[int](ints)
	e.Display[float64](floats)
	e.Display[string](strs)

	fmt.Println(e.MyInt(0).String())
	fmt.Println(f([]e.MyInt{1, 2, 3, 4}))
}

func f[T e.Stringer](xs []T) []string {
	var ret []string
	for _, x := range xs {
		ret = append(ret, x.String())
	}
	return ret
}
