package main

import "core:fmt"

main :: proc() {
	words := get_word_list()

	entropy := generate_entropy()
	bytes := get_bytes(&entropy)
	indexes := get_indexes(&bytes)

	for i in indexes {
		fmt.print(words[i], " ")
	}
}
