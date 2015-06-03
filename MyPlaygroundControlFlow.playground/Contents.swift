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

let finalSquare = 25
var board = [Int](count: finalSquare + 1, repeatedValue: 0)
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08

var square = 0
var diceRoll = 0
while square < finalSquare{
    if ++diceRoll == 7 {diceRoll = 1}
    square += diceRoll
    if square < board.count{
        square += board[square]
    }
}

println("Game Over!")
