import Foundation

// Remove duplicate letters from a string

// MARK: - Solution
func removeDuplicates(in string: String) -> String {
	let charactersArray = string.map { String($0) }
	let filteredCharactersSet = NSOrderedSet(array: charactersArray)
	let filteredCharactersArray = Array(filteredCharactersSet) as? [String]
	return filteredCharactersArray?.joined() ?? string
}

// MARK: - Tests
print(removeDuplicates(in: "wombat") == "wombat")
print(removeDuplicates(in: "hello") == "helo")
print(removeDuplicates(in: "Mississippi") == "Misp")
print("Success")
