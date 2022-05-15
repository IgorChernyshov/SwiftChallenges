import Foundation

// Implement a deque data structure
// Create a new data type that models a double-ended queue using generics, or deque.
// You should be able to push items to the front or back, pop them from the front or back,
// and get the number of items.

// MARK: - Solution
struct Deque<T> {

	private var elements = [T]()

	var count: Int { elements.count }

	mutating func pushFront(_ element: T) { elements.insert(element, at: 0) }

	mutating func pushBack(_ element: T) { elements.append(element) }

	mutating func popFront() -> T? {
		if elements.isEmpty {
			return nil
		} else {
			return elements.removeFirst()
		}
	}

	mutating func popBack() -> T? { elements.popLast() }
}

// MARK: - Tests
var numbers = Deque<Int>()
numbers.pushBack(5)
numbers.pushBack(8)
numbers.pushBack(3)
assert(numbers.count == 3)
assert(numbers.popFront()! == 5)
assert(numbers.popBack()! == 3)
assert(numbers.popFront()! == 8)
assert(numbers.popBack() == nil)
