import Foundation

// Integer disguised as string
// Write a function that accepts a string and returns true if it contains only numbers,
// i.e. the digits 0 through 9.

// MARK: - Solution
func isInteger(_ string: String) -> Bool {
	string.trimmingCharacters(in: .decimalDigits).isEmpty
}

// MARK: - Tests
isInteger("01010101") == true
isInteger("123456789") == true
isInteger("9223372036854775808") == true
isInteger("1.01") == false
