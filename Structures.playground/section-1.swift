// Playground - noun: a place where people can play

import UIKit
import Foundation

// a Function for lazy type variable
func somefunc() -> String{
    return ("This is the value of a lazy var")
}


//Classes are passed by reference But structures are passed by value
func changeVal (var someObj:MyClass) -> String {
    someObj.value = "Changed"
    return someObj.value
}

// Change this from class to stuct and see the difference below.
class MyClass {
    var value:String = "Hello"
}


struct MyStuct {
    
    var fName:String
    var lName:String
    
    // Property Observer
    var observer:String = "This is an observer" {
        willSet{
            println("Will change to \(newValue)")
        }
        didSet {
            println("Changed from \(oldValue)")
        }
    }
    
    // Computed Property
    var fullName :String {
        return (fName + " " + lName)
    }
    
    lazy var lazyvar: String = somefunc()
    
}


var myObject = MyStuct(fName: "Haroon", lName: "Baig", observer: "Hello", lazyvar: nil) //Default Constructor provided

myObject.lazyvar //Called a function

myObject.observer = "My name is Haroon" //Changed the value of an Observer

var obj = MyClass()
changeVal(obj)
obj.value


// Opertors

var a:Int = 10
var b: Int = 20
var c:Int
var value:Float = 10.8
var value2: Float = 5.8

var result:Float = value * value2
result

var result2 = Float(a) * Float(b)
result2  // Type of the operands must be same for these kida operations


// The data types of operands must be the same here.
c = a+b
c = a-b
c = a*b
c = b/a
c = a%b

var site: String?
var site2: String = "www.google.com"
site = "www.GitHub.com"

// Nil Coalesing operator. It doees the forced unwrapping.
var site3 = site ?? site2
println (site3)


var date1 = NSDateComponents()
date1.year = 2015
date1.month = 10
date1.day = 90


var date2 = NSDateComponents()
date2.year = 2015
date2.month = 10
date2.day = 90


if (date1 == date2){
    println("The values are the same")
}
else {
    println("The values are not the same")
}

var date3 = date1

if (date1 === date3){
    println("The objects instance are the same")
}

var someVal :String = "Hello my name is Haroon"

var components = someVal.componentsSeparatedByString(" ")  // used a function from the foundation class

for i in components {
println(i)
}