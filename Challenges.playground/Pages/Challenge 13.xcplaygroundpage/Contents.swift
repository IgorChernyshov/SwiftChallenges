import Foundation

// Run-length encoding
// Write a function that accepts a string as input, then returns how often each letter is repeated in
// a single run, taking case into account.
// Tip: This approach is used in a simple lossless compression technique called run-length encoding.

// MARK: - Solution
func runLengthEncoding(input: String) -> String {
	var encoded = ""
	var currentCharacter = input.first ?? Character("")
	var currentCount = 0

	for character in input {
		if currentCharacter == character {
			currentCount += 1
		} else {
			encoded += String(currentCharacter)
			currentCharacter = character

			encoded += currentCount.description
			currentCount = 1
		}
	}

	encoded += String(currentCharacter)
	encoded += currentCount.description

	return encoded
}

// MARK: - Tests
runLengthEncoding(input: "aabbcc") == "a2b2c2"
runLengthEncoding(input: "aaabaaabaaa") == "a3b1a3b1a3"
runLengthEncoding(input: "aaAAaa") == "a2A2a2"
