import Foundation

// Linked list mid-point
// Extend your linked list class with a new method that returns the node at the mid point
// of the linked list using no more than one loop.
// Tip: If the linked list contains an even number of items, returning the one before
// or the one after the center is acceptable.

// MARK: - Solution
final class LinkedLetter {
	var nextLetter: LinkedLetter?
	let character: Character

	init(character: Character) {
		self.character = character
	}
}

func midPoint(firstLinkedLetter: LinkedLetter) -> Character {
	var letters: [Character] = []
	var linkedLetter: LinkedLetter? = firstLinkedLetter
	while let letter = linkedLetter {
		letters.append(letter.character)
		linkedLetter = letter.nextLetter
	}
	return letters[letters.count / 2]
}

// MARK: - Tests
let a = LinkedLetter(character: "a")
let b = LinkedLetter(character: "b")
let c = LinkedLetter(character: "c")
a.nextLetter = b
b.nextLetter = c

midPoint(firstLinkedLetter: a) == "b"
