//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

for index in 1...5{
    println("\(index) times 5 is \(index * 5)")
}

let base = 3
let power = 10
var answer = 1
for _ in 1...power{
    answer *= base
}
answer


