// Playground - noun: a place where people can play

import UIKit

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
var c1:Float

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

















