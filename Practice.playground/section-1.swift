// Playground - noun: a place where people can play

import UIKit

// This file is just a quick review of what swift looks like and how it's been written.

// -------- Variables -- self explainatory ----------

// Explicit declaration
var someString:String
var someInt:Int
var someFloat:Float
var someDouble:Double
var someBool:Bool

// Assignment
someString = "Hello Swift"
someInt = 12
someFloat = 1.99
someDouble = 2.9898989
someBool = true

// Printing
println(someString)
print("This line would be printed but without an endLine character at the end")
println("This is the Integer \(someInt), and this is a float \(someFloat)")

// --------- Constants -------------

// They must be initialised at the sane time when they are declared
let someConstant:String = "Hello, this is a constant and it's value cannot be changed"
let constantInt:Int = 34
print(constantInt) // Their value cannot be changed throughout the code.

/*
============================================================================================
======================================= SEPARATION =========================================
*/


// --------- Program Flow ----------
// Here, curly braces are necessary, even if there si a single statement under IF. Same is the case with else.

if someInt == 12 {
    println("This is an if staatement")
}
else if (someInt == 13) {
    println("This is an else-if clause")
}
else {
    println("This is an else clause")
}

// -------- Switch Statement ---------

/*
In swift, you donot have to write the 'break' after every statement. if a case matches, then the program flow
comes out of the switch statement. But, we have to provide a default case in every situation.
*/

switch (constantInt){
case 12:
    println("This is how we use cases here")
case  34:
    println("This should be printed")
default:
    break
}

/*
============================================================================================
======================================= SEPARATION =========================================
*/

// ------- Enumerations -------
enum Months {
    case Jan
    case Feb
    case Mar
}

var simpleDeclatation = Months.Feb
var myEnumDeclaration:Months
myEnumDeclaration = .Jan    // Assignment using the Dot syntax
println(myEnumDeclaration)
myEnumDeclaration = .Mar
println(myEnumDeclaration.hashValue) // getting the hashValue of an enum

// -- Switch statements with enum
switch myEnumDeclaration {
case .Jan:
    println("Switch wth enumerations")
case .Mar:
    println("Enum matched")
default:
    break
}

// -- IF statement with enumerations
if myEnumDeclaration == .Mar {
    println("I'm lonely")
}
else if myEnumDeclaration == .Jan {
    println("Swift is wonderful")
}
else {
    println("Get a life")
}

/*
============================================================================================
======================================= SEPARATION =========================================
*/

// ------ Optionals ------

var simpleDeclarationOptional:String? = "This is an optional."
var anOptional:String?
println(anOptional)

anOptional = "Now we gave it a value, now it shouldn't be nil"
println(anOptional!) // The '!' sign at the end is to force unwrap the optional

// Using IF-LET, we don't necessarily need to force unwrap an optional to get it's value.
if let someValue = anOptional {
    println(someValue) // automatically forced unwrapped
}
else {
    println("The optional didn't have any value, its nil")  // would be nil if it doesnt have any value
}

// Same rules apply here.
switch (anOptional){
case nil:
    println("You see, I told you.")
default:
    println(anOptional!) // can have a value or can be nil. Just having two states.
}

/*
============================================================================================
======================================= SEPARATION =========================================
*/

// -------- Arrays -------

var anIntArray: [Int]
anIntArray = [1,2,3,4,5]

// Iterating using the FOR-IN loop
for i in anIntArray{
    println("\(i) ")
}
println(anIntArray.count) // Length of an array

anIntArray.append(6)      // Adding an element at the end
println(anIntArray.count)

anIntArray.removeLast() // Removing the last element
println(anIntArray.count)

println(anIntArray[4]) // Accessing individual elements of an array

/*
============================================================================================
======================================= SEPARATION =========================================
*/


// ------ Dictionaries ------

var myDict:[Int:String] // All the keys mustbe of the same type, so as values
myDict = [1:"One", 2:"Two", 3:"Three", 4:"Four", 5:"Five"]

myDict.updateValue("Six", forKey: 6) // Updates the value for a key and if it's not there, its then added to the dict

// Iterating over a dictionary
for (key, value) in myDict{
    println("Key: \(key) and Value: \(value)")
}

myDict.removeValueForKey(6) // Removing a value for a particular key

println(myDict[3]!)  // The individual accessing of an elements return an optional, so it should be forced unwrapped
/*
============================================================================================
======================================= SEPARATION =========================================
*/

// -------- Tuples --------

// ** Unnamed Tuples
var myTuple : (Int, String) // Declaring a Tuple
myTuple = (1, "Hello")  // Initializing a Tuple

// Accessing the individual values of a tuple.
println(myTuple.0)
println(myTuple.1)

// ** Named Tuples
var myNamedTuple: (oneValue:Int, secondValue:String)
myNamedTuple.oneValue = 10
myNamedTuple.secondValue = "Hi There"
println("\(myNamedTuple.oneValue) and \(myNamedTuple.secondValue)")

/*
============================================================================================
======================================= SEPARATION =========================================
*/

// ----- Functions ------

// Format. Start with the keyword 'func'
func simpleFunction(){
    println("This is the simple function which takes nothing and return nothing")
}

// This would be the same for Int, FLoat, Double, Bool
func myFunction (param1:Int, param2:String) -> String {
    return (" First param: \(param1) and Second param: \(param2) ")
}

// Functions with default arguments
func myDefaultFunction (param1:Int, param2:String = "Default") -> String{
    return (" First param: \(param1) and Second param: \(param2) ")
}

// Returning an Array
func returnArray () -> [Int] {
    return [1,2,3,4,5]
}

//Returning a Dictionary
func returnDict () -> [Int: String]{
    return [1:"One", 2:"Two", 3:"Three"]
}

// Returning an unnamed Tuple
func returnTuple() -> (Int, String) {
    return (1, "One")
}

// Returning a named Tuple
func returnNamedTuple() -> (value1:Int, value2:String) {
    return (27, "Named Tuple")
}

// Returning an optional
func returnOptional (param1:Int) -> Int? {
    return param1
}

// calling a minimalistic function
simpleFunction()

var collectingReturnValue = myFunction(23, "Hi")
println(collectingReturnValue)

// Collect the values in the specified return type
returnArray()
returnDict()
returnTuple()
returnNamedTuple()

// Incase of functions having some default arguments, we have to pass "Named Parameters"
myDefaultFunction(23, param2: "Hello there")

// Optional Thing
returnOptional(3)

/*
============================================================================================
======================================= SEPARATION =========================================
*/

// -------- CLosures --------

let myClosure = {
    () -> () in
    println("This is the simplest closure you'll ever see")
}

// a Function taking a closure as an argument
func takeClosure (closure:() -> ()) {
    closure()
}

// a function making a decision with the help of a closure
func closureOperation (param1:Int, param2:Int, closure:(a:Int, b:Int) -> Bool) -> Bool {
    var someValue = closure(a: param1, b: param2)
    if (someValue){
        println("Yes, this number is divisible by 2")
        return true
    }
    else {
        return false
    }
}

// Passing a closure to a function
takeClosure(myClosure)

// Passing a closure explicitly
takeClosure({
    () -> () in
    println("This is another way of passing the closure to a function, direclty.")
})

// We are telling here how the behaviour of the function should be.
closureOperation(9, 100, {
    (a:Int, b:Int) -> Bool in
    if (a%2 == 0 && b%2 == 0){
        return true
    }
    else {
        return false
    }
})

/*
============================================================================================
======================================= SEPARATION =========================================
*/




















