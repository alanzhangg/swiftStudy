//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
println(str)

var optionStr: String? = "sdhks"
println(optionStr==nil)


let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
println(largest)

func calculateStatistics(scores:[Int]) -> (min: Int, max: Int, sum: Int){
    
    var min = scores[0];
    var max = scores[0];
    var sum = 0;
    
    for score in scores{
        if score > max{
            max = score
        }else if score < min{
            min = score
        }
        sum += score
    }
    return(min, max, sum)
}

let statistics = calculateStatistics([5,3,100,3,9])
println(statistics.sum)
println(statistics.2)

func sumOf(numbers: Int...) -> Int{
    var sum = 0
    for number in numbers{
        sum += number
    }
    return sum
}

sumOf()
sumOf(42, 587, 12)

func returnFifteen() -> Int{
    var y = 10
    func add(){
        y += 5
    }
    add()
    return y
}

returnFifteen()

func makeIncrementer() -> (Int -> Int){
    func addOne (number: Int) -> Int{
        return 1 + number
    }
    return addOne
}

var increment = makeIncrementer()
increment(1)

func hasAnyMatches(list:[Int], condition: Int -> Bool) -> Bool{
    
    for item in list {
        if condition(item){
            return true
        }
    }
    return false
}

func lessThanTen(number:Int) -> Bool{
    return number < 10
}

var numbers = [20, 19, 7, 12]
hasAnyMatches(numbers, lessThanTen)

numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
})

let mappedNumbers = numbers.map({number in 3 * number})
mappedNumbers

let sortedNumbers = sorted(numbers){$0 > $1}
sortedNumbers




