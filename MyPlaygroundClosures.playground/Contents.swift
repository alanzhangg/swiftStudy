//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func backwards(s1: String, s2: String) -> Bool{
    return s1 > s2
}

var revered = sorted(names, backwards)
revered = sorted(names, { (s1: String, s2: String) -> Bool in
    return s1 > s2
})
revered = sorted(names, {s1, s2 in return s1 > s2})
revered = sorted(names, >)

func someFunctionsGetClosure(closure:() -> ()){
    
}

someFunctionsGetClosure { () -> () in
    
}
someFunctionsGetClosure(){
    
}

let digitalName = [0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four", 5: "Five", 6: "Six", 7: "seven", 8: "Eight", 9: "Nine"]

let numbers = [16, 58, 510]

let strings = numbers.map(){
    (var number) -> String in
    var outPut = ""
    while number > 0{
        outPut = digitalName[number % 10]! + outPut
        number /= 10
    }
    return outPut
}
strings


func makeIncrement(forIncrement mount: Int) -> ()->Int{
    var runningTotal = 0
    func increment() -> Int{
        runningTotal += mount
        return runningTotal
    }
    return increment
}
let incrementTen = makeIncrement(forIncrement: 10)
incrementTen()
incrementTen()
incrementTen()

let incrementSeven = makeIncrement(forIncrement: 7)
incrementSeven()
incrementSeven()
incrementTen()












