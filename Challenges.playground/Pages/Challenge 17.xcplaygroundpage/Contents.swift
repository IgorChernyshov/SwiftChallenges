import Foundation

// Generate a random number in a range
// Write a function that accepts positive minimum and maximum integers,
// and returns a random number between those two bounds, inclusive.

// MARK: - Solution
func randomInRange(min: Int, max: Int) -> Int {
	Int.random(in: min...max)
}

func homemadeRandomInRange(min: Int, max: Int) -> Int {
	Int(arc4random_uniform(UInt32(max - min + 1))) + min
}

// MARK: - Tests
(1...5).contains(randomInRange(min: 1, max: 5))
(8...10).contains(randomInRange(min: 8, max: 10))
(12...12).contains(randomInRange(min: 12, max: 12))
(12...18).contains(randomInRange(min: 12, max: 18))

homemadeRandomInRange(min: 1, max: 5)
homemadeRandomInRange(min: 8, max: 10)
homemadeRandomInRange(min: 12, max: 12)
homemadeRandomInRange(min: 12, max: 18)
