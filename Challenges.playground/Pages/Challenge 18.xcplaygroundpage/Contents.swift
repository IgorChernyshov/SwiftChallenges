import Foundation

// Recreate the pow() function
// Create a function that accepts positive two integers,
// and raises the first to the power of the second.
// Tip: If you name your function myPow() or challenge18(), you’ll be able to use the
// built-in pow() for your tests. The built-in pow() uses doubles, so you’ll need to typecast.

// MARK: - Solution
func pow(number: Int, power: Int) -> Int {
	var result = number
	for _ in 1..<power {
		result *= number
	}
	return result
}

// MARK: - Tests
pow(number: 4, power: 3) == 64
pow(number: 2, power: 8) == 256
