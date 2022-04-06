import Foundation

// Binary reverse
// Create a function that accepts an unsigned 8-bit integer and returns its binary reverse,
// padded so that it holds precisely eight binary digits.

// Tip: When you get the binary representation of a number,
// Swift will always use as few bits as possible – make sure
// you pad to eight binary digits before reversing.

// MARK: - Solution
func eightBitBinaryReverse(_ number: Int) -> Int {
	let binaryNumber = Array(String(number, radix: 2))
	var reversedNumber: [Character] = binaryNumber.reversed()
	reversedNumber += Array(repeating: Character("0"), count: 8 - reversedNumber.count)
	return Int(String(reversedNumber), radix: 2) ?? 0
}

// MARK: - Tests
eightBitBinaryReverse(32) == 4
eightBitBinaryReverse(41) == 148
eightBitBinaryReverse(4) == 32
eightBitBinaryReverse(148) == 41
