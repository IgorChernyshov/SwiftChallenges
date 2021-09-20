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
}

// MARK: - Tests
"a   b   c".condensingWhitespaces() == "a b c"
"    a".condensingWhitespaces() == " a"
"abc".condensingWhitespaces() == "abc"
"a b".condensingWhitespaces() == "a b"
