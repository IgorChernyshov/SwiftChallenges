import Foundation

// Condense whitespace

// MARK: - Solution
extension String {

	func condensingWhitespaces() -> String {
		reduce(into: "") {
			if $0.last == " " && $1 == " " { return }
			$0.append($1)
		}
	}

	func regexCondensingWhitespaces() -> String {
		// Regex are about 50% slower, but the intense is more clear
		// Find " +" ("one or more spaces") and replace them with " "
		replacingOccurrences(of: " +", with: " ", options: .regularExpression, range: nil)
	}
}

// MARK: - Tests
"a   b   c".condensingWhitespaces() == "a b c"
"    a".condensingWhitespaces() == " a"
"abc".condensingWhitespaces() == "abc"
"a b".condensingWhitespaces() == "a b"
// -----
"a   b   c".regexCondensingWhitespaces() == "a b c"
"    a".regexCondensingWhitespaces() == " a"
"abc".regexCondensingWhitespaces() == "abc"
"a b".regexCondensingWhitespaces() == "a b"
