package main

import "bip39"
import "core:fmt"

main :: proc() {
	words, ok := bip39.load_word_list()

	if !ok {
		panic("invalid BIP-39 wordlist: expected exactly 2048 words")
	}

	fmt.println(len(words))
	fmt.println(words[0])
}
