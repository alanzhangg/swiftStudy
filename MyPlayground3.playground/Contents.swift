//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

protocol ExampleProtocol{
    var simpleDescription: String {get}
    mutating func adjust()
}

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += "  Now 100% adjusted."
    }
}

var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += "  (adjusted)"
    }
}

var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription

extension Int: ExampleProtocol{
    var simpleDescription: String{
        return "The number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
}

println(7.simpleDescription)
var num : Int = 7
num.adjust()

let protocalValue : ExampleProtocol = a
println(protocalValue.simpleDescription)

//enum SimpleEnum: ExampleProtocol{
//    case Ace
//    case Two, Three
//    func adjust() {
//        switch self{
//        case .Ace:
//            println("ace")
//        }
//    }
//}
//
//var cDescription = SimpleEnum.Ace
//cDescription.adjust()
