import Foundation

// String permutations
// Write a function that prints all possible permutations of a given input string.
// Tip: A string permutation is any given rearrangement of its letters,
// for example "boamtw” is a permutation of "wombat”.

// MARK: - Solution
func permutate(input: String, current: String = "") {
	let length = input.count
	let strArray = Array(input)
	if (length == 0) {
		// there's nothing left to re-arrange; print the result
		print(current)
		print("******")
	} else {
		print(current)
		// loop through every character
		for i in 0 ..< length {
			// get the letters before me
			let left = String(strArray[0 ..< i])
			// get the letters after me
			let right = String(strArray[i+1 ..< length])
			// put those two together and carry on
			permutate(input: left + right, current: current + String(strArray[i]))
		}
	}
}

// MARK: - Tests
//permutate(input: "a")
permutate(input: "ab")
//permutate(input: "abc")
