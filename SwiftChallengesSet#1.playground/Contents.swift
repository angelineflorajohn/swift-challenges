import UIKit

/*
 Problem#1: Write a Swift function to compute the sum of the two integers. If the values are equal return the triple their sum.
 */
func calculateSum(firstInteger: Int, secondInteger: Int) -> Int {
    if firstInteger == secondInteger {
        return 3 * (firstInteger + secondInteger)
    }else {
        return firstInteger + secondInteger
    }
}
 print(calculateSum(firstInteger: 5, secondInteger: 5))
print(calculateSum(firstInteger: 3, secondInteger: 2))

/*
 Problem#2: Write a Swift function that accept two integer values and return true if one of them is 20 or if their sum is 20.
 */
func isNumberTwenty(firstInteger: Int, secondInteger: Int) -> Bool {
    if firstInteger == 20 || secondInteger == 20 || firstInteger + secondInteger == 20 {
        return true
    }else {
        return false
    }
}
print(isNumberTwenty(firstInteger: 29, secondInteger: 10))
print(isNumberTwenty(firstInteger: 11, secondInteger: 9))


/*
 Problem#3: Write a Swift function to accept two integer values and return true if one is negative and one is positive. Return true only if both are negative.
 */
func isPositive(firstInteger: Int, secondInteger: Int) -> Bool {
    if firstInteger < 0 && secondInteger < 0 {
        return true
    }else if firstInteger < 0 && secondInteger > 0 {
        return true
    }else if firstInteger > 0 && secondInteger < 0 {
        return true
    }else {
        return false
    }
}

print(isPositive(firstInteger: -12, secondInteger: -5))
print(isPositive(firstInteger: 200, secondInteger: -5))
print(isPositive(firstInteger: 200, secondInteger: 5))

/*
 Problem#4: Write a Swift function to add "Is" to the front of a given string. However, if the string already begins with "Is", return the given string.
 */
func prefixWithIs(inputString: String) -> String {
    guard inputString.isEmpty == false else {
        return "No string entered"
    }
    if inputString.hasPrefix("Is") {
        return inputString
    }else {
        return "Is \(inputString)"
    }
}

print(prefixWithIs(inputString: "Islam"))
print(prefixWithIs(inputString: "falcon"))
print(prefixWithIs(inputString: ""))
print(prefixWithIs(inputString: "Is Swift"))
print(prefixWithIs(inputString: "Program"))

/*
 Problem#5: Write a Swift function to find the largest number among three given integers.
 */
func findLargestNumber(firstInteger: Int, secondInteger: Int, thirdInteger: Int) -> Int {
    if firstInteger > secondInteger && firstInteger > thirdInteger {
        return firstInteger
    }else if secondInteger > firstInteger && secondInteger > thirdInteger {
        return secondInteger
    }else if thirdInteger > firstInteger && thirdInteger > secondInteger {
        return thirdInteger
    }else if firstInteger == secondInteger && secondInteger > thirdInteger {
        return firstInteger
    }else if firstInteger == thirdInteger && thirdInteger > secondInteger {
        return thirdInteger
    }else if secondInteger == thirdInteger && thirdInteger > firstInteger {
        return secondInteger
    }else {
        return firstInteger
    }
}

print("Largest number is \(findLargestNumber(firstInteger: 1, secondInteger: 1, thirdInteger: -11))")
print("Largest number is \(findLargestNumber(firstInteger: 30, secondInteger: 2, thirdInteger: 30))")
print("Largest number is \(findLargestNumber(firstInteger: -1, secondInteger: 0, thirdInteger: 11))")

/*
 Problem#6: Write a Swift function that accept two integer values and to test which value is nearest to the value 10, or return 0 if both integers have same distance from 10.
 */
func nearestToZero(firstInteger: Int, secondInteger: Int) -> Int {
    var firstIntegerDistance = 10 - abs(firstInteger)
    var secondIntegerDistance = 10 - abs(secondInteger)
    if firstIntegerDistance == secondIntegerDistance {
        return 0
    }else if firstIntegerDistance > secondIntegerDistance {
        return secondInteger
    }else {
        return firstInteger
    }
}

print(nearestToZero(firstInteger: 3, secondInteger: 7))
print(nearestToZero(firstInteger: -100, secondInteger: 100))

/*
 Problem#7: Write a Swift function to count the number of 7's in a given array of integers.
 */
func countNumberSeven(intArray: [Int]) -> Int {
    var totalCount: Int = 0
    for i in intArray {
        if i == 7 {
            totalCount += 1
        }
    }
    return totalCount
}

print("Number of 7's: \(countNumberSeven(intArray: [1,9,87,7,8,3,2,7,6]))")
print("Number of 7's: \(countNumberSeven(intArray: [0,9,4,6]))")

/*
 Problem#8: Write a Swift function to count the number of times that two 7's are next to each other in a given array of integers.
 */
func countSevenNumbers(intArray: [Int]) -> Int {
    var totalCount: Int = 0
    for (index, number) in intArray.enumerated() {
        if number == 7 && intArray[index+1] == 7 {
            totalCount += 1
        }
    }
    return totalCount
}
print("Number of two consecutive 7's: \(countSevenNumbers(intArray: [0,7,9,4,6,7,7,1]))")

