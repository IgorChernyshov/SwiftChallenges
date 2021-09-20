import Foundation

// String is rotated

// MARK: - Solution
func isRotated(firstString: String, secondString: String) -> Bool {
	guard firstString.count == secondString.count else { return false }
	return "\(firstString)\(firstString)".contains(secondString)
}

// MARK: - Tests
isRotated(firstString: "abcde", secondString: "eabcd") == true
isRotated(firstString: "abcde", secondString: "cdeab") == true
isRotated(firstString: "abcdeabcde", secondString: "abced") == false
isRotated(firstString: "abc", secondString: "a") == false
