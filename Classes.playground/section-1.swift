// Playground - noun: a place where people can play

import UIKit

class SuperClass {
    
    // Stored properties
    var fName:String
    var lName:String
    
    // this can be accessed by a class level, not at object level
    class var typeLevel :String {
    return "This is a type level string"
    }
    
    
    // read-only Computed property
    var fullName:String{
        
        get{
            return (self.fName+" "+self.lName)
        }
        
    }
    
    
    init (){
        fName = ""
        lName = ""
    }
    
    init (fName:String, lName:String){
        self.fName = fName
        self.lName = lName
    }
    
    func get () -> String{
        return (self.fName + " " + self.lName)
    }
    
    func display (){
        println("\(self.fName) \(self.lName)")
        
    }
    
    func set (fName:String, lName:String){
        self.fName = fName
        self.lName = lName
    }
    
    
}


var myObject = SuperClass(fName: "Muhammad", lName:"Haroon" )
myObject.display()
myObject.fullName // accessing read-only computed property
SuperClass.typeLevel

