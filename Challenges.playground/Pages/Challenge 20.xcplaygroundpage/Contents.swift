import Foundation

// Number is prime
// Write a function that accepts an integer as its parameter and returns true if the number is prime.
// Tip: A number is considered prime if it is greater than one and
// has no positive divisors other than 1 and itself.

// MARK: - Solution
func isPrime(_ number: Int) -> Bool {
	if number < 2 { return false }
	for index in 2..<number {
		if number % index == 0 {
			return false
		}
	}
	return true
}

func fasterIsPrime(_ number: Int) -> Bool {
	guard number >= 2 else { return false }
	guard number != 2 else { return true }

	let max = Int(ceil(sqrt(Double(number))))
	for i in 2 ... max {
		if number % i == 0 {
			return false
		}
	}
	return true
}

// MARK: - Tests
isPrime(11) == true
isPrime(13) == true
isPrime(4) == false
isPrime(9) == false
isPrime(16777259) == true

fasterIsPrime(11) == true
fasterIsPrime(13) == true
fasterIsPrime(4) == false
fasterIsPrime(9) == false
fasterIsPrime(16777259) == true
