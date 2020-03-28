package main

import "fmt"

func main() {
	fmt.Println("What's your name?")
	var name string
	// Add your code below:
	fmt.Scan(&name)


	fmt.Printf("Hello %v!", name)
}