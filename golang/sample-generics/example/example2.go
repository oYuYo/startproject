package example

import "strconv"

type Stringer interface {
	String() string
}

type MyInt int

func (i MyInt) String() string {
	return strconv.Itoa(int(i))
}
