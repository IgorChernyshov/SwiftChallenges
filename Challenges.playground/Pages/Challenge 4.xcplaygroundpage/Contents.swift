import Foundation

// Does one string contain another?

// MARK: - Solution
extension String {

	func fuzzyContains(_ otherString: String) -> Bool {
		let selfLowercased = lowercased()
		let otherLowercased = otherString.lowercased()
		return selfLowercased.range(of: otherLowercased) != nil
	}
}

// MARK: - Tests
print("Hello, world".fuzzyContains("Hello") == true,
	  "Hello, world".fuzzyContains("WORLD") == true,
	  "Hello, world".fuzzyContains("Goodbye") == false)
