import Foundation

// Swap two numbers
// Swap two positive variable integers, a and b, without using a temporary variable.

// MARK: - Solution
func swapNumbers(a: inout Int, b: inout Int) {
	a = a + b
	b = a - b
	a = a - b
}

func swapNumbersXOR(a: inout Int, b: inout Int) {
	a = a ^ b
	b = a ^ b
	a = a ^ b
}

func swiftySwapNumbers(a: inout Int, b: inout Int) {
	swap(&a, &b)
}

func swapNumbers(_ numbers: (a: Int, b: Int)) -> (Int, Int) {
	(numbers.b, numbers.a)
}

// MARK: - Tests
var a = 1
var b = 2
swapNumbers(a: &a, b: &b)
print(a, b)
swapNumbersXOR(a: &a, b: &b)
print(a, b)
swiftySwapNumbers(a: &a, b: &b)
print(a, b)
print(swapNumbers((a, b)))
