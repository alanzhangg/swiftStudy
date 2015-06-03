//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func sayHello(personName: String) -> String{
    let greeting = "hello, " + personName + "!"
    return greeting
}
sayHello("Anna")
sayHello("Brian")

func halfOpenRangeLength(start: Int, endof end: Int) -> Int{
    return start - end
}

halfOpenRangeLength(1, endof: 10)

func sayHelloWorld() -> String{
    return "hello, world"
}
sayHelloWorld()

func sayGoodBye(personName: String){
    println("GoodBye, \(personName)!")
}
sayGoodBye("Dave")

func minMax(array: [Int]) -> (min: Int, max: Int)?{
    if array.isEmpty {return nil}
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count]{
        if value < currentMin{
            currentMin = value
        }else if value > currentMax{
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

if let bounds = minMax([8, -6, 2, 109, 3, 71]){
    bounds.min
}

func join(string s1: String, toString s2: String, withString s3: String = " ") -> String{
    return s1 + s2 + s3
}
join(string: "hello", toString: "world", withString: ", ")

join(string: "hello", toString: "world")

func containsCharacter(#string: String, #characterToFind: Character) -> Bool{
    for character in string{
        if character == characterToFind{
            return true
        }
    }
    return false
}
let containsAVee = containsCharacter(string: "aardvark", characterToFind: "v")

func arithmeticMean(numbers: Double...) -> Double{
    var total: Double = 0
    for number in numbers{
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)

// 1, 1, 2, 3, 5, 8, 13
func flo(n: Int) -> Int{
    if n == 1 || n == 2{
        return 1
    }else{
        return flo(n - 1) + flo(n - 2)
    }
}

flo(6)

func alignRight(var string: String, totalLenght: Int, pad: Character) -> String{
    let amountToPad = totalLenght - count(string)
    if amountToPad < 1{
        return string
    }
    let padString = String(pad)
    for _ in 1...amountToPad{
        string = padString + string
    }
    return string
}

let originalString = "hello"
let padded = alignRight(originalString, 10, "-")

func swapTwoInts(inout a: Int, inout b: Int){
    let temporaryA = a
    a = b
    b = temporaryA
}
var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
someInt
anotherInt

func stepForward(input: Int) -> Int{
    return input + 1
}

func stepBackward(input: Int) -> Int{
    return input - 1
}

func chooseStep(backwards: Bool) -> (Int)->Int{
    return backwards ? stepBackward : stepForward
}

var currentValue = 3
let moe = chooseStep(currentValue > 0)
currentValue = moe(currentValue)





