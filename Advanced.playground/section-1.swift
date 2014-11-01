// Playground - noun: a place where people can play

import UIKit

// Type Checking

var button = UIButton()
var barButton = UIBarButtonItem()
var dialog = UIAlertView()

var objects: [Any]
objects = [button, barButton, dialog]

for i in objects{
    
    /* There are many ways to extract the type from as? and then force unwrapping it. But, using if let
    makes our task easy as it automatically force unwraps all the things for us. We dont have to worry about 'nil' too. A magic indeed.
    */
    
    if let item = i as? UIAlertView{
        println("This is an alert instance")
    }
    
    if let item = i as? UIBarButtonItem {
        println("This is a bar button instance")
    }
    
    if let items = i as? UIButton {
        println("This is an instance of a button")
    }
    
}

// AnyObjects and Any

var someValue:  Any
someValue = "Hello this is Any type object"
someValue = 66

/*
Here we apply the type check to the variable 'somValue'. If it's a String, do some String operations. Or else, display the value.
We can store anything in a variable if it's declared with the 'AnyObject' or 'Any' type.
*/

if (someValue is String){
    var someValue2 = someValue as String // If we were using AnyObject, we wouldnt do this. Example Given below
    var wordsArray = someValue2.componentsSeparatedByString(" ")
}
else {
    println("Wasn't a String so displaying the value. The value is \(someValue)")
}

var anyValue: AnyObject
anyValue = "This is another String but this time we're using AnyObject instead of Any"
anyValue = 90
if (anyValue is String){
    var hipHop = anyValue.componentsSeparatedByString(" ")
}
else{
    println(anyValue)
}

// Protocols

protocol myProtocol {
    
    /* In protocols, we just have to write the function's name, parameters and the return type, which we want our class to implement */
    
    func display (name:String) -> String
    
    // We specify either the property should be read-only or read-write computed property.
    var someProperty: Int { get } // read-only Computed Property
}

class myClass: myProtocol {
    
    /* Do whatever we want here in this class but as we extended the protocol, we must fulfill the needs, i.e. impplement all the things specified in the protocol
    */
    
    func display (name:String) -> String {
        return ("hey \(name), We've implemented a protocol method, yayy!")
    }
    
    var someProperty:Int {
        return 90
    }
    
}

var myObject = myClass()
myObject.display("Haroon")
myObject.someProperty



// Extensions

extension String {
    // Here, we will add a method to the String data type for more productivity.
    func reverseWords () -> String {
        var wordsArray = self.componentsSeparatedByString(" ")
        wordsArray = wordsArray.reverse()
        var combineString:String = " "
        for i in wordsArray {
            combineString += i + " "
        }
        return combineString
    }
    
}

var myString = "Hello I am Haroon"
myString.reverseWords()


extension Int {
    // Extending the Int thing.
    
    func display () {
        println(self)
    }
    
    func isEven () -> Bool {
        if (self%2 == 0){
            return true
        }
        else{
            return false
        }
    }
    
    func isOdd () -> Bool {
        if (self%2 == 0){
            return false
        }
        else{
            return true
        }
    }
}

var someInt: Int
someInt = 9
someInt.display()
someInt.isEven()
someInt.isOdd()

// Extending the Arrays

extension Array {
    func display () {
        for i in self {
            print(i)
            print(" ")
        }
        println()
    }
}

var intArray = [1,2,3,4,5,6]
intArray.display()


// Generics

/* They automaticaly inferrs the type. We don't have to check manually through 'as?' or any downcasting etc. They are much more like Any or AnyObject but they are intelligent enough to inferr the type. */

func printArray <T> (array: [T]) -> Int{
    var count :Int = 0
    
    for i in array{
        print(i)
        print(" ")
        count++
    }
    println()
    
    return count++
}

var arrayInt = [1,2,3,4,5,6,7]
var arrayString = ["ab", "cd", "ef", "gh"]

printArray(arrayInt)
printArray(arrayString)










