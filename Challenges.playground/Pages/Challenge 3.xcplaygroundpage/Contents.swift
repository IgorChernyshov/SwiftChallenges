import Foundation

// Do two strings contain the same characters?

// MARK: - Solution
func haveSameCharacters(stringOne: String, stringTwo: String) -> Bool {
	let charactersOne = Array(stringOne)
	let charactersTwo = Array(stringTwo)
	return charactersOne.sorted() == charactersTwo.sorted()
}

// MARK: - Tests
print(haveSameCharacters(stringOne: "abca", stringTwo: "abca") == true)
print(haveSameCharacters(stringOne: "abc", stringTwo: "cba") == true)
print(haveSameCharacters(stringOne: "a1 b2", stringTwo: "b1 a2") == true)
print(haveSameCharacters(stringOne: "abc", stringTwo: "abca") == false)
print(haveSameCharacters(stringOne: "abc", stringTwo: "Abc") == false)
print(haveSameCharacters(stringOne: "abc", stringTwo: "cbAa") == false)
print("Success")
