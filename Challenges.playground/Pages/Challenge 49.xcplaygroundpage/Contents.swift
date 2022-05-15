import Foundation

// Sum the even repeats
// Write a function that accepts a variadic array of integers and return the sum
// of all numbers that appear an even number of times.

// MARK: - Solution
func sumEvenRepeats(_ elements: Int...) -> Int {
	let set = NSCountedSet(array: elements)
	var sum = 0
	for element in set {
		if set.count(for: element) % 2 == 0, let intElement = element as? Int {
			sum += intElement
		}
	}
	return sum
}

// MARK: - Tests
sumEvenRepeats(1, 2, 2, 3, 3, 4) == 5
sumEvenRepeats(5, 5, 5, 12, 12) == 12
sumEvenRepeats(1, 1, 2, 2, 3, 3, 4, 4) == 10
