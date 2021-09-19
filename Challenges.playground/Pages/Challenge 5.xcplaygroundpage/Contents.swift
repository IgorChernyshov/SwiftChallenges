import Foundation

// Count the characters

// MARK: - Solution
func count(character: Character, in string: String) -> Int {
	string.reduce(0) { $1 == character ? $0 + 1 : $0 }
}

// MARK: - Tests
print(count(character: "a", in: "The rain in Spain"))
print(count(character: "i", in: "Mississippi"))
print(count(character: "i", in: "Hacking with Swift"))
print("Success")
