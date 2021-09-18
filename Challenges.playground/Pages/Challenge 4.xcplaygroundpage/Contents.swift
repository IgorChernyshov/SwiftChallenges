import Foundation

// Does one string contain another?

// MARK: - Solution
extension String {

	func fuzzyContains(_ otherString: String) -> Bool {
		range(of: otherString, options: .caseInsensitive) != nil
	}
}

// MARK: - Tests
print("Hello, world".fuzzyContains("Hello") == true,
	  "Hello, world".fuzzyContains("WORLD") == true,
	  "Hello, world".fuzzyContains("Goodbye") == false)
