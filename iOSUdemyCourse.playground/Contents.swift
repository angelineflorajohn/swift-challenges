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

// Logical conditions
// if-else and switch

var age: Int = 33
if (age > 21) {
    print("adult")
} else {
    print("young")
}

switch age {
case 21...:
    print("adult")
case 0...21:
    print("young")
default:
    print("invalid value")
}

// Loops:
// perform same action multiple times
// For loop:
// used to perform action on an array of items
for i in 0...99 {
    print(i)
}

var integers: [Int] = [33, 66, 99]
for i in integers {
    print(i)
}

// While loop:
// as long as the condition is true, set of statements get executed
var count: Int = 0

while count < 10 {
    print(count)
    count += 1 //without this statement the while loop will go into an infinite loop
}

// repeat while loop:
// same as do while
var i: Int = 0
repeat {
    print(i)
    i += 1
}
while i < 10

// Functions:
// lets you write the code once and be executed any number of times
// prefixed by the word func
// organize code and prevent code repetition
func printIntegers() {
    for i in 0...100 {
        print(i)
    }
}
printIntegers()
// functions can take parameters and return values as well
func printMessage(message: String, printNumber: Int) -> String {
    for _ in 0...printNumber {
        print(message)
    }
    return "Completed!"
}
printMessage(message: "hello world!", printNumber: 5)

// Optionals:
// to avoid null crash at run time and avoid having to add additional code to check for null
var myStr: String?
print(myStr ?? "default value in case of nil")
var newStr = (myStr ?? "default value") + "!"
print(newStr)
myStr = "Hello World"
print(myStr ?? "default value in case of nil")
var newStr2 = (myStr ?? "default value") + "!"
print(newStr2)

if let newStrVal = myStr {
    var newStr3 = newStrVal + "!"
}
