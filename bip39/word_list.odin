package bip39

import "core:strings"

word_list_data := string(#load("../data/words.txt"))

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
