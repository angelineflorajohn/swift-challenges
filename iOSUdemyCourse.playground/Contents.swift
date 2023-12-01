import UIKit

var greeting = "Hello, playground"
greeting = "Hello World!"
let message = "Hello World!"
// errors out because let is a constant whose value cannot be changed
//message = "Hello, playground"

var myNumber: Int = 11
var myBool: Bool = false

// Swift has 3 types of collections
// Arrays, Sets and Dictionaries
// Arrays:
// stores values in a particular order
// 0 indexed
// append means add the item to the end of the array
// can retrieve items only using their index

var someIntegers = [Int]()
var someStrings = [String]()

someIntegers.append(3)
someIntegers.append(9)
someStrings.append("hello")
someStrings.append("world")
someStrings.append("hello")

//someStrings.append(6)
someIntegers += [6,12]
someIntegers.count
someStrings.count

print(someStrings)
print(someIntegers)

// Sets:
// stores distinct values of the same type with no particular order
// an item only appears once
// insert means add the item to the set in any order
var letters = Set<Character>()

letters.insert("a")
letters.insert("z")
letters.insert("b")
print(letters)
letters.count
letters.insert("a") // does not get inserted since it already exists
print(letters)

var favorites: Set<String> = ["Basket ball", "volley ball", "soccer"]
favorites.insert("badminton")
print(favorites)
favorites.insert("Basket ball")
print(favorites)
// use Sets when the order is not important and there should be only unique values


// Dictionaries:
// stores keys and values of the same type
var integerNames = [Int: String]()
integerNames[1] = "one"
integerNames[9] = "nine"
print(integerNames)

var multipleIntNames = [Int: [String]]()
multipleIntNames[1] = ["ek", "one"]
multipleIntNames[2] = ["do", "two"]
multipleIntNames[3] = ["teen", "three"]
print(multipleIntNames)
print(multipleIntNames[3]?[1] ?? 0)
