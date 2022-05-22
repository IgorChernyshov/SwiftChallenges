import Foundation

// Count the largest range
// Write a function that accepts an array of positive and negative numbers and returns
// a closed range containing the position of the contiguous positive numbers that sum
// to the highest value, or nil if nothing were found.

// MARK: - Solution
func largestRange(in array: [Int]) -> CountableClosedRange<Int>? {
	var bestRange: CountableClosedRange<Int>? = nil
	var bestSum = 0

	var currentStart: Int? = nil
	var currentSum = 0

	for (index, number) in array.enumerated() {
		if number > 0 {
			currentStart = currentStart ?? index
			currentSum += number
			if currentSum > bestSum {
				bestRange = currentStart! ... index
				bestSum = currentSum
			}
		} else {
			currentSum = 0
			currentStart = nil
		}
	}
	return bestRange
}

// MARK: - Tests
largestRange(in: [0, 1, 1, -1, 2, 3, 1]) == 4...6
largestRange(in: [10, 20, 30, -10, -20, 10, 20]) == 0...2
largestRange(in: [1, -1, 2, -1]) == 2...2
largestRange(in: [2, 0, 2, 0, 2]) == 0...0
largestRange(in: [Int]()) == nil
