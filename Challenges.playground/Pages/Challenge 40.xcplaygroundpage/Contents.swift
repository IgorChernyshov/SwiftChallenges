import Foundation

// Missing numbers in array
// Create a function that accepts an array of unsorted numbers from 1 to 100 where zero or more
// numbers might be missing, and returns an array of the missing numbers.

// MARK: - Solution
func missingNumbers(in array: [Int]) -> [Int] {
	let completeSet = Set(1...100)
	let inputSet = Set(array)
	let diffSet = completeSet.subtracting(inputSet)
	return Array(diffSet).sorted()
}

// MARK: - Tests
var testArray = Array(1...100)
testArray.remove(at: 25)
testArray.remove(at: 20)
testArray.remove(at: 6)

missingNumbers(in: testArray) == [7, 21, 26]
