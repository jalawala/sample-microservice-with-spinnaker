package main

import (
	"fmt"
	"log"
	"net/http"
)

// HandlerFunc1 handles basic calls
func HandlerFunc1(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "\n Test Release   V3   1.011")
}

func main() {
	http.HandleFunc("/", HandlerFunc1)
	log.Fatal(http.ListenAndServe(":8080", nil))
}
