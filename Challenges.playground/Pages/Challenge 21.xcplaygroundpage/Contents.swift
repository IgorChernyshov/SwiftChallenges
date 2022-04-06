import Foundation

// Counting binary ones
// Create a function that accepts any positive integer and returns
// the next highest and next lowest number that has the same number
// of ones in its binary representation. If either number is not
// possible, return nil for it.

// MARK: - Solution
func challenge21b(number: Int) -> (nextHighest: Int?, nextLowest: Int?) {

	func countBinaryOnes(in number: Int) -> Int {
		String(number, radix: 2).reduce(into: 0) { if $1 == "1" { $0 += 1} }
	}

	let targetOnes = countBinaryOnes(in: number)
	var nextHighest: Int? = nil
	var nextLowest: Int? = nil
	for i in number + 1...Int.max {
		if countBinaryOnes(in: i) == targetOnes {
			nextHighest = i
			break
		}
	}
	for i in (0..<number).reversed() {
		if countBinaryOnes(in: i) == targetOnes {
			nextLowest = i
			break
		}
	}

	return (nextHighest, nextLowest)
}

// MARK: - Tests
challenge21b(number: 12) == (17, 10)
challenge21b(number: 28) == (35, 26)
