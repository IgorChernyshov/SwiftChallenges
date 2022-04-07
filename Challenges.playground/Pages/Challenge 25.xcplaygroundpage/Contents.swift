import Foundation

// Calculate a square root by hand
// Write a function that returns the square root of a positive integer,
// rounded down to the nearest integer, without using sqrt().

// MARK: - Solution
func root(_ input: Double) -> Int {
	Int(pow(input, 0.5))
}

// MARK: - Tests
root(9) == 3
root(16777216) == 4096
root(16) == 4
root(15) == 3
