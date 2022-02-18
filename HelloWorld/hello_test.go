package main

import "testing"

func TestHello(t *testing.T) {
	got := Hello("Stefano")
	want := "Hello, Stefano"

	if got != want {
		t.Errorf("got %v, want %v", got, want)
	}
}
