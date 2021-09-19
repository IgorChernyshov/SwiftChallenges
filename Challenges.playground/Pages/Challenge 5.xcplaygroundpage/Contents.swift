import Foundation

// Count the characters

// MARK: - Solution
func count(character: Character, in string: String) -> Int {
	string.filter { $0 == character }.count
}

// MARK: - Tests
print(count(character: "a", in: "The rain in Spain"))
print(count(character: "i", in: "Mississippi"))
print(count(character: "i", in: "Hacking with Swift"))
print("Success")
