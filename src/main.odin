package main

import "core:fmt"

main :: proc() {
	words, ok := load_word_list()

	if !ok {
		panic("invalid BIP-39 wordlist: expected exactly 2048 words")
	}

	fmt.println(generate_entropy())
}
