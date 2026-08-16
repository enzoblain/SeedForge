package main

import "core:math/rand"

generate_entropy :: proc() -> (entropy: u128) {
	return rand.uint128()
}
