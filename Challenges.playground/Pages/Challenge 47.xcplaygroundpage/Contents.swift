import Foundation

// Recreate min()
// Write an extension for all collections that reimplements the min() method.

// MARK: - Solution
extension Collection where Self.Element: Comparable {
	func customMin() -> Self.Element? {
		self.sorted(by: <).first
	}
}

// MARK: - Tests
[1, 2, 3].customMin() == 1
["q", "f", "k"].customMin() == "f"
[4096, 256, 16].customMin() == 16
Array<String>().customMin() == nil
