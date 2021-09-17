import Foundation

// Unique characters (case sensitive)

// MARK: - Solution
func uniqueCharacters(input: String) -> Bool {
	Set(input).count == input.count
}

// MARK: - Tests
assert(uniqueCharacters(input: "No duplicates") == true, "Unique characters challenge failed")
assert(uniqueCharacters(input: "abcdefghijklmnopqrstuvwxyz") == true, "Unique characters challenge failed")
assert(uniqueCharacters(input: "AaBbCc") == true, "Unique characters challenge failed")
assert(uniqueCharacters(input: "Hello, world") == false, "Unique characters challenge failed")
print("Success")
