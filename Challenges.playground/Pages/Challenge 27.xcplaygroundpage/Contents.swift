import Foundation

// Print last lines
// Write a function that accepts a filename on disk, then prints its last N lines
// in reverse order, all on a single line separated by commas.

// MARK: - Solution
func printLastLines(input: String, quantity: Int) {
	let string = input.components(separatedBy: .newlines)
	let lastLines = string.suffix(quantity)
	let lastLinesReversed = lastLines.reversed()
	let result = lastLinesReversed.joined(separator: ", ")
	print(result)
}

// MARK: - Tests
let input =
"""
Antony And Cleopatra
Coriolanus
Cymbeline
Hamlet
Julius Caesar
King Lear
Macbeth
Othello
Twelfth Night
"""

printLastLines(input: input, quantity: 3)
