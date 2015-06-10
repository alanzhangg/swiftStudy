//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Counter {
    var count = 0
    func increment(){
        ++count
    }
    func incrementBy(amount: Int){
        count += amount
    }
    func reset(){
        count = 0
    }
}

let counter = Counter()
counter.increment()
counter.incrementBy(5)
counter.reset()

class  Counter1 {
    var count: Int = 0
    func incrementBy(amount: Int, numberOfTimes: Int){
        count += amount * numberOfTimes
    }
}

let counter1 = Counter1()
counter1.incrementBy(5, numberOfTimes: 3)

struct Point {
    var x = 0.0, y = 0.0
    func isToTheRightOfX(x: Double) -> Bool{
        return self.x > x
    }
    mutating func moveByX(detalX: Double, y deltaY: Double){
        x += detalX
        y += deltaY
    }
}
let somePoint = Point(x: 4.0, y: 5.0)
if somePoint.isToTheRightOfX(1.0){
    print("++++++")
}
somePoint.x
somePoint.y

enum TriStateSwitch{
    case Off, Low, High
    mutating func next(){
        switch self{
        case Off:
            self = Low
        case Low:
            self = High
        case .High:
            self = Off
        }
    }
}

var overLight = TriStateSwitch.Low
overLight.next()
overLight.next()

class SomeClass {
    class func someTypeMethod(){
        
    }
}

SomeClass.someTypeMethod()

struct LevelTracker {
    static var highestUnloackedLevel = 1
    static func unlockLevel(level: Int){
        if level > highestUnloackedLevel{
            highestUnloackedLevel = level
        }
    }
    static func levelIsUnlocked(level: Int) -> Bool{
        return level <= highestUnloackedLevel
    }
    var currentLevel = 1
    mutating func advanceToLevel(level: Int) -> Bool{
        if LevelTracker.levelIsUnlocked(level){
            currentLevel = level
            return true
        }else{
            return false
        }
    }
}

class Player {
    var tracker = LevelTracker()
    let playerName: String
    func completedLevel(level: Int){
        LevelTracker.unlockLevel(level + 1)
        tracker.advanceToLevel(level + 1)
    }
    init(name: String){
        playerName = name
    }
}

var player = Player(name: "Argyrios")
player.completedLevel(2)
LevelTracker.highestUnloackedLevel

player = Player(name: "Beto")
if player.tracker.advanceToLevel(1){
    print("play")
}else{
    print("6")
}















