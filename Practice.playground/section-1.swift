// Playground - noun: a place where people can play

import UIKit




var a:Int
a = 0

for b in 0...10{
    //var c = b
    //c = 10
    a += b
    println(a)
    
}

if (a<100){
    
    println("\(a) is less than 100")
    
}


switch (a){
case 10..<55:
    println("this is the thing")
case 55:
    println("This is also the thing")
    
default:
    println("nothing matched")
    
}

var array = [1,2,3,4,5,6,7]
var array2 = [String]()
array2 = ["aba", "asd", "asf"]


for element in array2{
    println(element)
    
}
var dict = [1:"a", 2:"b", 3:"c"]
var dict2 = [Int:String]()

for ( key , value ) in dict {
    println("\(key) and \(value)")
}

dict2.updateValue("Hello", forKey: 1)

for (key, value) in dict2 {
    println("\(key) and \(value)")
    
}


println(add(4,4));

println(multiply(a:10))

var opt:Int?
opt = 10
//println(opt!)

println("The count of the array is \(array.count)")
array.insert(27, atIndex: 7)
println("The count of the array is \(array.count)")

if !(array.isEmpty){
    println("This array is not empty")
    
}
array.append(28)
array += [34]

println("array count is \(array.count)")

func add (a:Int, b:Int) -> Int {
    var c:Int
    c = a + b
    return c
    
}


func multiply (a:Int = 10, b:Int = 30) -> Int {
    
    var c:Int
    c = a*b
    return c;
}

if let some = opt{
    println(some)
}
else
{
    println("The value is nil")
}


enum Months {
    case jan
    case feb
    case mar
    case apr
    
}

var _months:Months
_months = .jan
println(_months)

var _months2 = Months.mar
println(_months2.hashValue)

switch _months2 {
    
case .jan:
    println("This is jan")
case .mar:
    println("this is martch")
case .apr:
    println("This is april")
    
default:
    break
    
}

let clo = {
    () -> () in
    
    println("This is a closure")
    
    
}

test(clo)
test( {
    ()->() in
    println("This is the mutated one")
    
    
} )


func test (cc:()->()){
    
    for i in 0..<10{
        cc()
        
    }
    
}

var unsorted = [3,5,6,4,6,6,4,34,3,3,25,6,8,9,0,9]

let sortedarray = sorted(unsorted, {
    (first: Int, second: Int) -> Bool in
    return first<second
    
})

for i in sortedarray{
    println(i)
    
}

class MyClass {
    internal var a:Int
    internal var b:Int
    
    init(){
        self.a = 0
        self.b = 0
    }
    
    init (a:Int, b:Int){
        self.a = a
        self.b = b
    }
    
    private func addMe () -> Int {
        return (a+b)
    }
    
}

class SecondClass: MyClass {
    
    
    override func addMe() -> Int {
        return (a*b)
    }
    
}

var myObject = MyClass(a:10, b:30)
myObject.a
println(myObject.addMe())

var mySecondObject = SecondClass(a:10, b:10)
println(mySecondObject.addMe())


var a3:Int
a3 = 10
println(a3)
let o = 2
println(o)

switch o{
case 1...10:
    println("hello there")
default:
    break
    
    
}

for i in 0...2{
    println("Yaar !")
}

let cc = {
    () -> () in
    println("This is a closure")
    
    
}

ccc(cc)
ccc({
    () -> () in
    println("This is explicit thing !")
    
    
})

func ccc ( closure:()->() ){
    
    for i in 0...2{
        closure()
    }
    
}

var bbb = [Int]()
bbb = [1,2,3,4,5,6]
bbb.append(7)
for i in bbb{
    println(i)
    
}

var yy = [Int:String]()
yy.updateValue("Haroon", forKey: 1)
//yy[1]=nil
for (key, value) in yy{
    println("\(key) and \(value)")
}
var tuple = (1,2,3,4)
var (n1,m1,o1,p1) = tuple
println("\(n1+m1+o1+p1)") //decomposing a tuple

var optional: Int?
//optional = 10

if let somevalue = optional {
    println("This is the value \(somevalue)")
}
else {
    println("The thing was null. Hell yeah !")
}

let rr = {
    () -> () in
    println("This is for the sake of practice")
    
}

closurere ({
    () -> () in
    println("This Thing ! Yeah")
    
})

func closurere (closure:()->()){
    for i in 0...1{
        closure()
    }
    
    
}

enum pra {
    case one
    case two
    case three
    
    
}

var ttt:pra
ttt = .one
var ttt2 = pra.two

if ttt == .one{
    
    println("Hell Yeah!")
}

switch ttt2 {
    
case .two:
    println("Ths thins works")
default:
    break
    
}

class Hello {
    
    var anE:Int
    var var2:String
    
    init(){
        anE = 0
        var2 = "Empty"
        
        
    }
    init (a:Int = 20, var2:String = "Default"){
        self.anE = a
        self.var2 = var2
        
    }
    
    func display (closure:()->()){
        println("\(a) and \(var2)")
        closure()
        
    }
    func display2 (closure:(a:Int, b:Int)->Int, p:Int, l:Int){
        var tt = closure(a:p, b:l)
        println(tt)
        
    }
    
}

var obj = Hello(a:20, var2:"Hi There !")
obj.display({
    () -> () in
    println("This was from closure")
    
})

obj.display2({
    (o:Int, i:Int) -> Int in
    return o*i
    
    }, p:20, l:20)

obj.display2({
    (o:Int, i:Int) -> Int in
    var p: Int
    p = o * i
    return p
    }, p:10, l:10)

obj.display2({
    (q:Int, u:Int) -> Int in
    return q-u
    
    
    
    }, p: 10, l: 10)

var dr = [1:"abc", 2:"def"]

for (key, value) in dr {
    
    println("\(key) and \(value)")
    
}

var ee: Int?
ee = 10
if let ff = ee {
    println(ff)
}

var oo:Int
oo = 10
println(oo)

var rew:Int?
rew = 10
if let pop = rew{
    println("This wasn't nil")
}
else{
    println("This was actually nil")
}


class HiThere {
    private var tri:Int?
    private var arr:[Int]
    private var someval:[Int:String]
    
    
    
    init(a:Int, b:[Int], c:[Int:String]){
        self.tri = a
        self.arr = b
        self.someval = c
        
    }
    
    
    private func display(){
        if let some = tri {
            println(some)
        }
        else {
            println("The value was nil")
        }
        
        for itt in self.arr{
            println(itt)
        }
        for (key, value) in someval{
            println("\(key) and \(value)")
            
        }
    }
    
    private func Arrr() -> [Int]{
        
        return self.arr
        
    }
    private func Dicttt() -> [Int:String]{
        
        return self.someval
    }
    
    private func hello (closure:()->[Int:String]){
        
        var er = closure()
        for (i,j) in er {
            println("\(i) and and and \(j)")
            
        }
        
        
    }
    
    
    
    
    
}

var myO = HiThere(a:10, b:[1,2,3], c:[1:"Hello", 2:"Hi there"])

myO.display()

var arrt:[Int]

arrt = myO.Arrr()

for i in arrt{
    println(i)
}
var hel = myO.Dicttt()
for (i,j) in hel{
    println("\(i) and and \(j)")
    
}

let rrr = {
    () -> [Int:String] in
    
    return [1:"Hello"]
    
}

myO.hello(rrr)

println(rrr())

var variable:Int
variable = 10


switch (variable){
case 5...10:
    println("Hell yeah")
case 3..<10:
    println("Hell Hell yeah!")
default:
    break
}

enum Enum {
    
    case a
    case b
    case c
    case d
    
}

var eenum:Enum

eenum = .a

if eenum == .a{
    println("This works ! Yeah ")
}

let constant : Float = 2.0
let constant2 : Int = 2
println(constant)

var dictionary = [Int:String]()
dictionary.updateValue("hello Hi", forKey: 1)
dictionary.updateValue("Salam", forKey: 2)
for (i,j) in dictionary{
    println("\(i) and \(j)")
}

println(dictionary.count)

var something:Int?
something = 10
println(something!)

if let ii = something{
    println("\(ii) is not a nil thing though !")
    
}

enum enumenum {
    case z,x,c,v
    
}

var testt: enumenum
testt = .z

println(testt.hashValue)
testt = .v
println(testt.hashValue)

if testt == .v {
    println("it worked!")
    
    
}

switch testt {
case .v:
    println("Here it worked too !")
default:
    break
}

let clooo = {
    (a:enumenum) in
    
    println(a.hashValue)
    
}

clooo(testt)


var int:Int
int = 10
println(int)

var float:Float = 10.0
println(float)


var string:String = "Helo this is Haroon"
println(string)


func function () -> Int {
    
    return 10;
    
}

var rret = function()
println(rret)

let qwer = {
    
    () -> () in
    println("Hello world !")
}

qwer()

func closureclosure (closure:() -> ()){
    closure()
}

closureclosure(qwer)

var tre:String
tre = "Hello"
tre += " World!"
println(tre)

var char:Character
char = "c"
println(char)

var dsa :String
dsa = "Helo I am haroon"

for i in dsa {
    println(i)
}


dsa += String(char)
println(dsa)

int = 34

switch int {
    
case 2...10:
    println("Doesnt work")
case 10...40:
    println("This should match")
default:
    break
    
    
}


enum iop {
    
    case v
    case b
    case n
}


var cvb:iop
cvb = .n

switch cvb.hashValue {
case 1:
    println("This doesnt work")
case 2:
    println("This works")
default:
    break
}

let descending = {
    (var a:Int, b:Int) -> Bool in
    return a>b
}


let ascending = {
    (var a:Int, b:Int) -> Bool in
    return a<b
}


var try = [4,6,8,5,3,5,7,8,53,7,8]
var jkl = sorted(try, ascending)
for i in jkl {
    print(i)
    
}
println("\ndifference")

var jkl2 = sorted(try, descending)
for i in jkl2 {
    print(i)
    
}


println("Hello Yosemite !")

var cvbb: Int?
cvbb = 90
println(cvbb)

if let ghj = cvbb{
    println(ghj)
}


class KLM {
    
    private var tyu: Int?
    
    init (var a:Int)
    {
        self.tyu = a
        
    }
    
    internal func Display (){
        if let u = self.tyu{
            println(u)
        }
        else {
            println("The thing was nil")
        }
    }
    
    
    
}

var myClass = KLM(a:78)
myClass.Display()


var ui:Int?
//println(ui!)

if let o = ui {
    println(o)
    
}
else {
    println("The value is nil")
}


var varvar: Int
varvar = 10
var tgb:Float
tgb = Float(varvar)


println(tgb)







