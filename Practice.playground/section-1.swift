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

/*
============================================================================================
======================================= SEPARATION =========================================
*/










