//: Playground - noun: a place where people can play

import UIKit

//OPTIONAL TYPES

var string1 = Optional("I am optional")

print(string1)

func printOptional(aString: String?)
{
    print(aString!)
}

printOptional("Bloop")


var string2: String?

print(string2)

//NONO with optionals, must have a value before unwrapping or get an error

//print(string2!)


string2 = "bleep"

print(string2)


//OBJECT TYPES

enum Days : String {
    case Monday = "Monday"
    case Tuesday = "Tuesday"
    case Wednesday = "Wednesday"
    case Thursay = "Thursday"
    case Friday = "Friday"
    case Saturday = "Saturday"
    case Sunday = "Sunday"
}

var whichDay = Days.Monday

class Time {
    private var times = [1,2,3,4,5,6,7,8,9,10,11,12]
    private var daylight = ""
    
    subscript(idx: Int) -> Int{
        return times[idx]
    }
    
    
    init(sunnyOrNight: String)
    {
        daylight = sunnyOrNight
    }

}

//STRUCTS

struct node{
    static let redNode = "Red"
    var blackNode = "Black"
    var weight = 1.0
    var length = 7
}

print("This is a \(node.redNode) node")

//does not work -- print("This is a \(node.blackNode) node")

protocol Diver
{
    var depth : Int {get}
    
    func dive()
    
    func diveDeeper() -> Void
}

class Whale : Diver{
    
    var depth : Int = 300
    
    func dive(){
        
    }
    
    func diveDeeper() -> Void {
        print("I can dive deeper than 200 meters")
    }
    
}

let whaley  = Whale()

whaley.diveDeeper()

var bodyPart1 = "shoulder"

//TERNARY OPERATORS
let injury = (bodyPart1 == "shoulder") ? "My shoulder fucking hurts" : "My back fucking hurts"

//equivalent too

func injured(bodyPart1: String) -> String{
    if (bodyPart1 == "shoulder")
    {
        return "people mess me up in jiu jitsu"
    }
    else
    {
        return "ouch"
    }
}

//dictionaries

var fruit = [String:Int]()

fruit["banana"] = 1
fruit["apple"] = 2
fruit["orange"] = 3

//lol string then int
print(fruit["orange"])

