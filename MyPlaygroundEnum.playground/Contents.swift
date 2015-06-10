//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

enum CompassPoint{
    case North
    case South
    case East
    case West
}

enum Planet: Int{
    case Mercy = 1, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
}

var directionToHead = CompassPoint.West
directionToHead = .North

enum Barcode{
    case UPCA(Int, Int, Int, Int)
    case QRCode(String)
}

var productBarCode = Barcode.UPCA(8, 85909, 51226, 3)
productBarCode = .QRCode("ABCDEFGHIJKLMNOP")

switch productBarCode{
case .UPCA(let numberSysytem, let manufacture, let product, let check):
    println("UPC-A: \(numberSysytem), \(manufacture), \(product), \(check)")
case .QRCode(let productCode):
    println("QR code: \(productCode)")
}

switch productBarCode {
case let .UPCA(numberSystem, manufacturer, product, check):
    println("UPC-A: \(numberSystem), \(manufacturer), \(product), \(check).")
case let .QRCode(productCode):
    println("QR code: \(productCode).")
}

enum ASCIICotrolCharacter: Character{
    case Tab = "\t"
    case LineFeed = "\n"
    case CarriageReturn = "\r"
}

let earthOrder = Planet.Earth.rawValue

let possiblePlanet = Planet(rawValue: 7)
if let p = possiblePlanet{
    println(p.rawValue)
}else{
    println("is")
}




