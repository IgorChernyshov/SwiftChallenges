import Foundation

// Linked lists
// Create a linked list of lowercase English alphabet letters, along with a method
// that traverses all nodes and prints their letters on a single line separated by spaces.
// Tip #1: This is several problems in one. First, create a linked list data structure,
// which itself is really two things. Second, use your linked list to create the alphabet.
// Third, write a method traverses all nodes and prints their letters.
// Tip #2: You should use a class for this. Yes, really.
// Tip #3: Once you complete your solution, keep a copy of the code – you’ll
// need it for future challenges!

// MARK: - Solution
final class LinkedLetter {
	var nextLetter: LinkedLetter?
	let character: Character

	init(character: Character) {
		self.character = character
	}
}

func printLinkedList(letter: LinkedLetter?) {
	guard let letter = letter else { return }
	print(letter.character, separator: "", terminator: " ")
	printLinkedList(letter: letter.nextLetter)
}

func createAlphabet() -> LinkedLetter {
	let firstLetter = LinkedLetter(character: Character("a"))
	var lastLetter = firstLetter
	for character in "bcdefghijklmnopqrstuvwxyz" {
		let letter = LinkedLetter(character: character)
		lastLetter.nextLetter = letter
		lastLetter = letter
	}
	return firstLetter
}

// MARK: - Tests
let a = createAlphabet()
printLinkedList(letter: a)
