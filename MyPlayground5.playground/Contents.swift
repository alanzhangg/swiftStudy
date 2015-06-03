//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var x = 0.0, y = 0.0, z = 0.0
var welcomeMessage: String
welcomeMessage = "Hello"
var red, green, blue: Double
let minValue = UInt8.min
let maxValue = UInt8.max
var hash: UInt8 = 10

let oneMillion = 1_000_000
let justOveOneMillion = 1_000_000.000_000_1

let possibleNumble = "123"
let convertedNumber = possibleNumble.toInt()

var serverResponseCode: Int? = 404;
serverResponseCode = nil

var surveyAnswer: String?

if let actual = surveyAnswer{
    println(actual)
}else{
    println("hello world")
}

//let age = -3
//assert(age > 0, "a person")

let cat: [Character] = ["c", "a", "t"]
let catString = String(cat)

let greenting = "Guten Tag"
println(greenting.startIndex)
println(greenting.endIndex)
greenting[greenting.startIndex]

greenting[greenting.startIndex.successor()]
greenting[greenting.endIndex.predecessor()]

let index = advance(greenting.startIndex, 7)
greenting[index]

indices(greenting)

var welcome = "hello"
welcome.insert(" ", atIndex: welcome.endIndex)
welcome.splice(" there", atIndex: welcome.endIndex.predecessor())

welcome.removeAtIndex(welcome.endIndex.predecessor())

let range = advance(welcome.endIndex, -6)..<welcome.endIndex
welcome.removeRange(range)

if "A" == "A"{
    println("hello")
}

for scalar in welcome.unicodeScalars{
    println("\(scalar.value)")
}

for scalar in welcome.unicodeScalars{
    println("\(scalar)")
}

var threeDoubles = [Double](count: 3, repeatedValue: 0.0)
var anotherThreeDouble = [Double](count: 3, repeatedValue: 2.5)
var sixDouble = threeDoubles + anotherThreeDouble

var shoppingList = ["one", "two"]
shoppingList[0...1] = ["three", "four"]

for (index, value) in enumerate(shoppingList){
    println("Item \(index + 1): \(value)")
}

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers = [2, 3, 5, 7]
sorted(oddDigits.union(evenDigits))
sorted(oddDigits.intersect(evenDigits))
sorted(oddDigits.subtract(evenDigits))
sorted(oddDigits.exclusiveOr(evenDigits))







