package integers

import (
	"fmt"
	"testing"
)

func TestAdder(t *testing.T) {
	assertCorrectMessage := func(t testing.TB, got, want int) {
		t.Helper()
		if got != want {
			t.Errorf("got %v, want %v", got, want)
		}
	}

	t.Run("saying hello to people", func(t *testing.T) {
		got := Add(2, 2)
		want := 4
		assertCorrectMessage(t, got, want)
	})

	t.Run("saying hello to people", func(t *testing.T) {
		got := Add(3, 2)
		want := 5
		assertCorrectMessage(t, got, want)
	})
}
func ExampleAdd() {
	sum := Add(1, 5)
	fmt.Println(sum)
	// Output: 6
}
