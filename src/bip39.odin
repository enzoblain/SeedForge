package main

import "core:strings"
import "core:sync"

word_list_data := string(#load("../data/words.txt"))

word_list: [2048]string
word_list_once: sync.Once

get_word_list :: proc() -> [2048]string {
	sync.once_do(&word_list_once, proc() {
		ok: bool
		word_list, ok = load_word_list()

		if !ok {
			panic("invalid BIP-39 wordlist: expected exactly 2048 words")
		}
	})

	return word_list
}

load_word_list :: proc() -> ([2048]string, bool) {
	lines := strings.split_lines(word_list_data)

	words: [2048]string
	count := 0

	for line in lines {
		if strings.trim_space(line) == "" {
			continue
		}

		if count >= 2048 {
			return {}, false
		}

		words[count] = line
		count += 1
	}

	if count != 2048 {
		return {}, false
	}

	return words, true
}
