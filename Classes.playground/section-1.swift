// Playground - noun: a place where people can play

import UIKit

class SuperClass {
    
    var fName:String
    var lName:String
    
    
    init (){
        fName = ""
        lName = ""
    }
    
    init (fName:String, lName:String){
        self.fName = fName
        self.lName = lName
    }
    
    func get () -> String{
        return (self.fName + " "+ self.lName)
    }
    
    func display (){
        println("\(self.fName) \(self.lName)")
        
    }
    
    func set (fName:String, lName:String){
        self.fName = fName
        self.lName = lName
    }
    
    
}