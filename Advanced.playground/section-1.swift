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


