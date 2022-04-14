import Foundation

// Find the median
// Write an extension to collections that accepts an array of Int and
// returns the median average, or nil if there are no values.
// Tip: The mean average is the sum of some numbers divided by how many there are.
// The median average is the middle of a sorted list. If there is no single
// middle value – e.g. if there are eight numbers - then the median is the mean
// of the two middle values.

// MARK: - Solution
extension Collection where Iterator.Element == Int {

	var median: Double? {
		guard !isEmpty else { return nil }

		let sortedArray = sorted()
		if sortedArray.count % 2 == 0 {
			return evenMedian(of: sortedArray)
		} else {
			return oddMedian(of: sortedArray)
		}
	}

	private func evenMedian(of array: [Int]) -> Double? {
		let midRightElement = array.count / 2
		let midLeftElement = midRightElement - 1
		return Double(array[midRightElement] + array[midLeftElement]) / 2
	}

	private func oddMedian(of array: [Int]) -> Double? {
		let midElement = array.count / 2
		return Double(array[midElement])
	}
}

// MARK: - Tests
[1, 2, 3].median == 2
[1, 2, 9].median == 2
[1, 3, 5, 7, 9].median == 5
[1, 2, 3, 4].median == 2.5
[Int]().median == nil
