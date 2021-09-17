import Foundation

// Is a string a palindrome?

// MARK: - Solution
extension String {

	var isPalindrome: Bool {
		let lowercasedString = lowercased()
		let asCharacters = lowercasedString.map { $0 }
		return asCharacters.reversed() == asCharacters
	}
}

// MARK: - Tests
assert("rotator".isPalindrome, "”rotator” is a palindrome")
assert("Rats live on no evil star".isPalindrome, "“Rats live on no evil star” is a palindrome")
assert("Never odd or even".isPalindrome == false, "“Never odd or even” is not a palindrome")
assert("Hello, world".isPalindrome == false, "”Hello, world” is not a palindrome")
print("Success")
