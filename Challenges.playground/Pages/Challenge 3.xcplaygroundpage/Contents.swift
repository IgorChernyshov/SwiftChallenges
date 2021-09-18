import Foundation

// Do two strings contain the same characters?

// MARK: - Solution
func haveSameCharacters(stringOne: String, stringTwo: String) -> Bool {
	if stringOne.count != stringTwo.count { return false }
	let charactersOne = Array(stringOne)
	var charactersTwo = Array(stringTwo)
	for character in charactersOne {
		if let index = charactersTwo.firstIndex(of: character) {
			charactersTwo.remove(at: index)
			continue
		}
		return false
	}
	return true
}

// MARK: - Tests
print(haveSameCharacters(stringOne: "abca", stringTwo: "abca") == true)
print(haveSameCharacters(stringOne: "abc", stringTwo: "cba") == true)
print(haveSameCharacters(stringOne: "a1 b2", stringTwo: "b1 a2") == true)
print(haveSameCharacters(stringOne: "abc", stringTwo: "abca") == false)
print(haveSameCharacters(stringOne: "abc", stringTwo: "Abc") == false)
print(haveSameCharacters(stringOne: "abc", stringTwo: "cbAa") == false)
print("Success")
