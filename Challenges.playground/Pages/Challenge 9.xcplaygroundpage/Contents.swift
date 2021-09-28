import Foundation

// Find pangrams

// MARK: - Solution
extension String {

	var isPangram: Bool {
		let lowercased = lowercased()
		let lowercasedUnique = Set(lowercased)
		let lettersOnlyString = lowercasedUnique.filter { $0 >= "a" && $0 <= "z" }
		return lettersOnlyString.count == 26
	}
}

// MARK: - Tests
"The quick brown fox jumps over the lazy dog".isPangram == true
"The quick brown fox jumped over the lazy dog".isPangram == false
