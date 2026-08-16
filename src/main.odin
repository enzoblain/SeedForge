package main

import "core:fmt"

main :: proc() {
	words := get_word_list()
	entropy := generate_entropy()
	fmt.println(sha256(entropy[:]))
}
