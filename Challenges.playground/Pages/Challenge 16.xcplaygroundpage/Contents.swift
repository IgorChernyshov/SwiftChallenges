import Foundation

// Fizz Buzz
// Write a function that counts from 1 through 100, and prints “Fizz” if the counter is evenly
// divisible by 3, “Buzz” if it’s evenly divisible by 5, “Fizz Buzz” if it’s even divisible by
// three and five, or the counter number for all other cases.

// MARK: - Solution
func fizzBuzz(input: Int) -> String {
	var result = ""
	if input % 3 == 0 {
		result.append("Fizz")
	}
	if input % 5 == 0 {
		if !result.isEmpty {
			result.append(" ")
		}
		result.append("Buzz")
	}
	if result.isEmpty { return input.description}
	return result
}

func fizzBuzzWithPrints(input: Int) {
	for index in 1...input {
		if index % 3 == 0 && index % 5 == 0 {
			print("Fizz Buzz")
		} else if index % 5 == 0 {
			print("Buzz")
		} else if index % 3 == 0 {
			print("Fizz")
		} else {
			print(index)
		}
	}
}

// MARK: - Tests
fizzBuzz(input: 1) == "1"
fizzBuzz(input: 2) == "2"
fizzBuzz(input: 3) == "Fizz"
fizzBuzz(input: 4) == "4"
fizzBuzz(input: 5) == "Buzz"
fizzBuzz(input: 15) == "Fizz Buzz"

fizzBuzzWithPrints(input: 15)
