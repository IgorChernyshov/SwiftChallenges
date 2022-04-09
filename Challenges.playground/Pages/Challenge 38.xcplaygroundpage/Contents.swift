import Foundation

// Find N smallest
// Write an extension for all collections that returns the N smallest elements
// as an array, sorted smallest first, where N is an integer parameter.

// MARK: - Solution
extension Collection where Iterator.Element: Comparable {
	func lastSmallest(maxElements: Int) -> [Iterator.Element] {
		let sortedSelf = self.sorted(by: <)
		let last = sortedSelf.prefix(maxElements)
		return Array(last)
	}
}

// MARK: - Tests
[1, 2, 3, 4].lastSmallest(maxElements: 3) == [1, 2, 3]
["q", "f", "k"].lastSmallest(maxElements: 10) == ["f", "k", "q"]
[256, 16].lastSmallest(maxElements: 3) == [16, 256]
[String]().lastSmallest(maxElements: 3) == []
