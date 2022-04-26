import Foundation

// Recreate map()
// Write an extension for all collections that reimplements the map() method.

// MARK: - Solution
extension Collection {
	func customMap<T>(_ transform: (Element) throws -> T) rethrows -> [T] {
		var newCollection = [T]()
		for item in self { newCollection.append(try transform(item)) }
		return newCollection
	}
}

// MARK: - Tests
[1, 2, 3].customMap { String($0) } == ["1", "2", "3"]
["1", "2", "3"].customMap { Int($0)! } == [1, 2, 3]
