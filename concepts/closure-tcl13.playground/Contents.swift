func add( a: Int, b : Int)
{
    print(a + b)
}

let addClosure = {(a: Int, b: Int) in
    print(a+b)
}

addClosure(10,20)

func newClosure(a: Int, b: Int, addClosure : (Int,Int) -> Int){
var result = addClosure(a,b)
}

let func3 = {(A: Int , B: Int, addClosure: (Int, Int) )in
    return (A+B)}

newClosure(a: 10, b: 20) {
    $0*$1
}

// A closure with no parameters and no return value
let printClosure = { () -> Void in
    print("This closure does not take any parameters and does not return a value.")
}
// A closure with parameters and no return value
let printClosure2 = { (string: String) -> Void in
    print(string)
}
 // A closure with no parameters and a return value
let randomNumberClosure = { () -> Int in
    return Int.random(in: 1...100)
}
 // A closure with parameters and a return value
let randomNumberClosure2 = { (minValue: Int, maxValue: Int) -> Int in
    return Int.random(in: minValue...maxValue)
}


let firstNames = ["John", "Anna", "Mike", "Karim", "Bob"]

var fullNames: [String] = []

for name in firstNames {
    var fullname = name + " smith"
    fullNames.append(fullname)
}

let Firstnames = ["John", "Anna", "Mike", "Karim", "Bob"]

let Fullname = Firstnames.map { (name) -> String in
    return name + " smith"
}

let numbers = [8 , 6 ,5 , 7 ,3]

let total = numbers.reduce(0, +)
