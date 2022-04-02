import Foundation

// Find longest prefix
// Write a function that accepts a string of words with a similar prefix, separated by spaces, and
// returns the longest substring that prefixes all words.

// MARK: - Solution
func longestPrefix(words: String) -> String {
	let wordsArray = words.components(separatedBy: .whitespaces)
	guard let firstWord = wordsArray.first else { return "" }

	let wordsLength = firstWord.count
	var bestPrefix = ""
	for index in 1..<wordsLength {
		let prefix = firstWord.prefix(index)
		guard wordsArray.allSatisfy({ $0.hasPrefix(prefix) }) else { return bestPrefix }
		bestPrefix = String(prefix)
	}

	return bestPrefix
}

// MARK: - Tests
longestPrefix(words: "swift switch swill swim") == "swi"
longestPrefix(words: "flip flap flop") == "fl"
