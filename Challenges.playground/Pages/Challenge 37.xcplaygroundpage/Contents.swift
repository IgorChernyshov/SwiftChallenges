import Foundation

// Count the numbers
// Write an extension for collections of integers that returns the number of times
// a specific digit appears in any of its numbers.

// MARK: - Solution
extension Collection where Iterator.Element == Int {

	func count(digit: String) -> Int {
		self.reduce(into: "") { $0 += $1.description }.filter { $0 == Character(digit) }.count
	}
}

// MARK: - Tests
[5, 15, 55, 515].count(digit: "5") == 6
[5, 15, 55, 515].count(digit: "1") == 2
[55555].count(digit: "5") == 5
[55555].count(digit: "1") == 0
