import Foundation

// Remove duplicate letters from a string

// MARK: - Solution
func removeDuplicates(in string: String) -> String {
	var used = [Character: Bool]()
	let result = string.filter {
		used.updateValue(true, forKey: $0) == nil
	}
	return String(result)
}

// MARK: - Tests
print(removeDuplicates(in: "wombat") == "wombat")
print(removeDuplicates(in: "hello") == "helo")
print(removeDuplicates(in: "Mississippi") == "Misp")
print("Success")
