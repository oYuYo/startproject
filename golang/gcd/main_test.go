package main

import "testing"

func TestGCD(t *testing.T) {
	got, _ := GCD(15, 51)
	want := 3
	if got != want {
		t.Fatalf("expected: %v, got: %v", want, got)
	}

	got, _ = GCD(51, 15)
	want = 3
	if got != want {
		t.Fatalf("expected: %v, got: %v", want, got)
	}

	_, err := GCD(-1, 15)
	want = 3
	if err == nil {
		t.Fatal("expected error")
	}
}
