import Foundation

// Recreate index(of:)
// Write an extension for all collections that reimplements the index(of:) method.
// Tip: This is one of the easiest standard library methods to reimplement,
// so please give it an especially good try before reading any hints.

// MARK: - Solution
extension Collection where Element: Equatable {

	func challengeIndex(of searchedElement: Element) -> Int? {
		for (index, element) in self.enumerated() {
			if element == searchedElement { return index}
		}
		return nil
	}
}

// MARK: - Tests
[1, 2, 3].challengeIndex(of: 1) == 0
[1, 2, 3].challengeIndex(of: 3) == 2
[1, 2, 3].challengeIndex(of: 5) == nil
