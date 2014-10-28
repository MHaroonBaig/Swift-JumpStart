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
    makes our task wasy as it automatically force unwrap all the things for us. We dont have to worry about 'nil' too. A magic indeed.
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





























