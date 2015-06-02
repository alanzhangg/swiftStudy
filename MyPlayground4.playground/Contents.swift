//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func repeat<Item>(item:Item, times: Int) -> [Item]{
    var result = [Item]()
    for i in 0..<times{
        result.append(item)
    }
    return result
}

repeat("knock", 4)

enum OptionValue<T>{
    case None
    case Some(T)
}

var possibleInteger: OptionValue<Int> = .None
possibleInteger = .Some(100)

func anyCommonElements <T, U where T: SequenceType, U: SequenceType, T.Generator.Element: Equatable, T.Generator.Element == U.Generator.Element> (lhs: T, rhs: U) -> Bool {
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                return true
            }
        }
    }
    return false
}
anyCommonElements([1, 2, 3], [3])

var data = NSData()
var stri: NSString? = NSString(data: data, encoding: NSUTF8StringEncoding)
if let s = stri{
    println(s)
}






