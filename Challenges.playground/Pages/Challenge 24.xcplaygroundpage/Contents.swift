import Foundation

// Add numbers inside a string
// Given a string that contains both letters and numbers, write a function
// that pulls out all the numbers then returns their sum.

// MARK: - Solution
func sumIntegers(in string: String) -> Int {
	string.components(separatedBy: .letters).reduce(into: 0) { $0 += Int($1) ?? 0 }
}

// MARK: - Tests
sumIntegers(in: "a1b2c3") == 6
sumIntegers(in: "a10b20c30") == 60
sumIntegers(in: "h8ers") == 8
