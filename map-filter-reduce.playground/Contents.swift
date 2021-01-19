import UIKit
import Foundation

//MARK: - map
//def:      applying same operation to each item in the collection

//classic method of squaring items in array
let values = [2, 4, 6, 8, 10]
var squareArr : [Int] = []

for value in values {
    squareArr.append(value * value)
}

print("Traditional square: \(squareArr)")

//map method
let mapSquareArr = values.map({$0 * $0})

print("Square with map: \(mapSquareArr)")

//MARK: - filter
//def:      returns an array containing only items that matches condition
let nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12]
let evenNums = nums.filter {$0 % 2 == 0}
print("Even numbers using filter: \(evenNums)")

//MARK: - reduce
//def:      combines all items in a collection to return a single new value
let numbers = [1,2,3,4,5,6,7]
let totalResult = numbers.reduce(10, +)
print("Total result after reduce method: \(totalResult)")

//concatenating string using reduce
let abcd = ["a", "bc", "def"]
let concat = abcd.reduce("", +)
print("New string: \(concat)")

//MARK: - flatMap
//def:      map on steroids
let results = [[1,2,3], [4,5], [6,7,8,9]]
let allRes = results.flatMap {$0}
print("All items together - flatMap: \(allRes)")

//get all items from the array greater than 5
let filterResult = results.flatMap{$0.filter {$0 > 5}}
print("Filtered flatMap: \(filterResult)")

//MARK: - compactMap
//def:      getting rid of 'nil' values in a second
let names : [String?] = ["Dave", nil, "Boby", nil, "Yannis", nil]
let validNames = names.compactMap{$0}
print("Non-nil array using compactMap: \(validNames)")

//MARK: - Chaining methods
//def:      all methods can be chained and used together
let randomNumbers = [1, 2, 3, 4, 5, 6]
let filterReduce = randomNumbers.filter{$0 > 3}.reduce(0,+)
print("Total of nums > 3: \(filterReduce)")

let filterMap = randomNumbers.filter{$0 % 2 == 0}.map{$0 * $0}
print("Square even nums: \(filterMap)")

