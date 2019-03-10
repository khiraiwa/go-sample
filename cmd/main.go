package main

import (
	"log"
)

const (
	hoge = "b"
	fuga = "c"
)

func main() {
	options, err := getOptions()
	if err != nil {
		log.Println(err)
	}
	log.Println(options)
}
