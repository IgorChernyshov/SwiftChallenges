import Foundation

// Sort a string array by length
// Extend collections with a function that returns an array of strings
// sorted by their lengths, longest first.

// MARK: - Solution
extension Collection where Iterator.Element == String {

	func sortedByLength() -> [Iterator.Element] {
		self.sorted(by: { $0.count > $1.count })
	}
}

// MARK: - Tests
["a", "abc", "ab"].sortedByLength() == ["abc", "ab", "a"]
["paul", "taylor", "adele"].sortedByLength() == ["taylor", "adele", "paul"]
[String]().sortedByLength() == []
