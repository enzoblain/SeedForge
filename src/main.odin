package main

import "core:fmt"

main :: proc() {
	words, ok := load_word_list()

	if !ok {
		panic("invalid BIP-39 wordlist: expected exactly 2048 words")
	}

	entropy := generate_entropy()
	bytes := get_bytes(&entropy)
	indexes := get_indexes(&bytes)

	for i, index in indexes {
		fmt.print(words[i])

		if index < len(indexes) - 1 {
			fmt.print(" ")
		}
	}

	fmt.println()
}
