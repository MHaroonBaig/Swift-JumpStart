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

// Change this from class to stuct and see the differnce bellow.
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
        return (fName+" "+lName)
    }
    
    lazy var lazyvar:String = somefunc()
    
}


var myObject = MyStuct(fName: "Haroon", lName: "Baig", observer: "Hello", lazyvar: nil) //Default Constructor provided

myObject.lazyvar //Called a function

myObject.observer = "My name is Haroon" //Changed the value of an Observer

var obj = MyClass()
changeVal(obj)
obj.value
