import Foundation

// Unique characters (case sensitive)

// MARK: - Solution
func uniqueCharacters(input: String) -> Bool {
	var characterSet = Set<Character>()
	for character in input {
		if characterSet.contains(character) { return false }
		characterSet.insert(character)
	}
	return true
}

// MARK: - Tests
assert(uniqueCharacters(input: "No duplicates") == true, "Unique characters challenge failed")
assert(uniqueCharacters(input: "abcdefghijklmnopqrstuvwxyz") == true, "Unique characters challenge failed")
assert(uniqueCharacters(input: "AaBbCc") == true, "Unique characters challenge failed")
assert(uniqueCharacters(input: "Hello, world") == false, "Unique characters challenge failed")
print("Success")
