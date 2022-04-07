import Foundation

// Subtract without subtract
// Create a function that subtracts one positive integer from another, without using -.

// MARK: - Solution
func subtract(_ number: Int, from: Int) -> Int {
	from + -number
}

// MARK: - Tests
subtract(5, from: 9) == 4
subtract(10, from: 30) == 20
