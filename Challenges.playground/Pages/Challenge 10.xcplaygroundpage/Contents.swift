import Foundation

// Vowels and consonants
typealias Answer = (vowels: Int, consonants: Int)

// MARK: - Solution
extension String {

	private static let vowels = "aeiou"
	private static let consonants = "bcdfghjklmnpqrstvwxyz"

	func getVowelsAndConsonants() -> Answer {
		lowercased().reduce(into: (0, 0)) {
			if String.vowels.contains($1) {
				$0 = ($0.0 + 1, $0.1)
			} else if String.consonants.contains($1) {
				$0 = ($0.0, $0.1 + 1)
			}
		}
	}
}

// MARK: - Tests
"Swift Coding Challenges".getVowelsAndConsonants() == (6, 15)
"Mississippi".getVowelsAndConsonants() == (4, 7)
