import Foundation

// Three different letters

// MARK: - Solution
/// Compares two strings in a special way.
/// Returns True if two strings are of same length and differ in three letters or less.
/// Comparison is case and position sensitive.
/// Returns False if they are not.
/// - Parameters:
///   - stringOne: First string.
///   - stringTwo: Second string.
/// - Returns: Comparison result.
func differByThreeOrLessLetters(stringOne: String, stringTwo: String) -> Bool {
	guard stringOne.count == stringTwo.count else { return false }
	let charactersOne = Array(stringOne)
	let charactersTwo = Array(stringTwo)
	var missmatchCount = 3
	for (index, element) in charactersOne.enumerated() {
		if element != charactersTwo[index] {
			missmatchCount -= 1
		}
		guard missmatchCount >= 0 else { return false }
	}
	return true
}

// MARK: - Tests
differByThreeOrLessLetters(stringOne: "Clamp", stringTwo: "Cramp") == true
differByThreeOrLessLetters(stringOne: "Clamp", stringTwo: "Crams") == true
differByThreeOrLessLetters(stringOne: "Clamp", stringTwo: "Grams") == true
differByThreeOrLessLetters(stringOne: "Clamp", stringTwo: "Grans") == false
differByThreeOrLessLetters(stringOne: "Clamp", stringTwo: "Clam") == false
differByThreeOrLessLetters(stringOne: "clamp", stringTwo: "maple") == false
