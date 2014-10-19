// Playground - noun: a place where people can play

import UIKit

func LazyType() -> String {
    
    return "This is for lazy var, haha"
    
}


class SuperClass {
    
    // Stored properties
    var fName:String
    var lName:String
    
    // This is an observer. Whenever the value is changed, we could see it. No matter if there are 1000 instances of this class
    var anObserver:String = "This is an observer" {
        willSet{
            println("Changing from \(newValue)")
        }
        didSet{
            println("Changed from \(oldValue)")
        
        }
        
    }
    
    // this can be accessed by a class level, not at object level
    class var typeLevel :String {
    return "This is a type level string"
    }
    
    lazy var lvar:String = LazyType() // This function i.e. LazyType() wouln't be called when init() is called because it's lazy var
    
    
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
    
    // Class-level function
    class func TypeLevelFunc (arg:String){
        println("This is a class level function and we passed \(arg) to it")
        
    }
    
    
}


var myObject = SuperClass(fName: "Muhammad", lName:"Haroon" )

myObject.display()

myObject.fullName // accessing read-only computed property

myObject.lvar // LazyType funtion is called only when this particular instance is called

SuperClass.typeLevel

SuperClass.TypeLevelFunc("Hello") // naming a class-level function will give you an error

myObject.anObserver = "Hello, Hi !" // we can track the change in the console


