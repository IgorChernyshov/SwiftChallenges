import Foundation

// Reverse the words in a string
// Write a function that returns a string with each of its words reversed but in the original order,
// without using a loop.

// MARK: - Solution
func reverse(_ input: String) -> String {
	let words = input.components(separatedBy: .whitespaces)
	let result = words.map { $0.reversed() }
	return String(result.joined(separator: " "))
}

// MARK: - Tests
reverse("Swift Coding Challenges") == "tfiwS gnidoC segnellahC"
reverse("The quick brown fox") == "ehT kciuq nworb xof"
