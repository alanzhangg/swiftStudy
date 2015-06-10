//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)

class DataImporter {
    var fileName = "data.txt"
}

class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
}

let manager = DataManager()
manager.data.append("some Data")
manager.data.append("some more data")

println(manager.importer.fileName)

struct Point {
    var x = 0.0, y = 0.0
}

struct Size {
    var width = 0.0, height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point{
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter){
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}

var square = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10.0, height: 10.0))
let initial = square.center
square.center = Point(x: 15.0, y: 15.0)


struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double{
        return width * height * depth
    }
}


class StepCounter {
    var totalSteps: Int = 0{
        willSet(newTotalSteps){
            println(newTotalSteps)
        }
        didSet{
            if totalSteps > oldValue{
                totalSteps - oldValue
            }
        }
    }
}

let stepCounter = StepCounter()

stepCounter.totalSteps = 200

stepCounter.totalSteps = 360

struct SomeStructure {
    static var storedTypeProperty = "Some value."
    static var comuptedTypeProperty: Int{
        return 1
    }
}

enum SomeEnumeration {
    static var storedTypeProperty = "Some Value."
    static var computedTypeProperty: Int{
        return 2
    }
}

class SomeClass {
    static var storedTypeProperty = "Some Value."
    static var computedTypeProperty: Int{
        return 3
    }
}

println(SomeStructure.storedTypeProperty)
SomeStructure.storedTypeProperty = "Another value"
println(SomeStructure.storedTypeProperty)

println(SomeEnumeration.computedTypeProperty)
println(SomeClass.computedTypeProperty)


struct AudioChannel {
    static let thresholdLevel = 10
    static var maxInputLevelForAllChanels = 0
    var currentLevel: Int = 0{
        didSet{
            if currentLevel > AudioChannel.thresholdLevel{
                currentLevel = AudioChannel.thresholdLevel
            }
        }
        if currentLevel > AudioChannel.maxInputLevelForAllChanels{
            AudioChannel.maxInputLevelForAllChannels = currentLevel
        }
    }
}









