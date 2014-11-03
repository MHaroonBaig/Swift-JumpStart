// Playground - noun: a place where people can play

import UIKit


// This files contains all the basic syntax including operators, initialisations and things like that

// -------- Variables -- self explainatory ----------
// --------------------------------------------------

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
// ---------------------------------

// They must be initialised at the sane time when they are declared
let someConstant:String = "Hello, this is a constant and it's value cannot be changed"
let constantInt:Int = 34
print(constantInt)
// Their value cannot be changed throughout the code.

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

// ---- Optionals ----

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









