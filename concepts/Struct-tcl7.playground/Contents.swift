
struct Person{
    var personName : String = "Abc"

    func sayhello(){
        print("Hello, \(personName)")
    }
}
var Person1 = Person()
print(Person1.personName)
print(Person1.sayhello)

let string1 = String("iuf")
print (string1)

let string2 = ""

let integer1 = Int()
print(integer1)

let boolean = Bool()
print(boolean)

struct odometer{
    var count : Int
}

var odoeter1 = odometer(count:100)
print(odoeter1.count)

struct Bankaccount {
    var accountnumber : Int
    var balance : Double = 0
}

let newaccooubt = Bankaccount(accountnumber: 123 , balance : 0)
let tranferaccount = Bankaccount(accountnumber: 123)

struct temp{
    var celceuis : Double
}
let Temp = temp(celceuis: 30.0)


let farenhaeitvalue = 98.6
let celclciusvalue = (farenhaeitvalue - 32)/18

let newtemp = temp(celceuis: celclciusvalue)

struct somthingmeter {
    var count: Int = 0
    mutating func  increment(){
        count += 1
    }
}
var somethingmeter1 = somthingmeter(count: 1000)
print(somethingmeter1.count)
print(somethingmeter1.increment(), somethingmeter1.count)

struct Tempa {
    var celsius : Double

    var fahrenheit : Double {
        celsius * 1.8 + 32
    }

    var kelvin : Double {
        celsius + 273.15
    }
}

let cureentTemp = Tempa(celsius: 0.0)
print(cureentTemp.fahrenheit)
print(cureentTemp.kelvin)

struct StepCounter{
    var totalsteps : Int = 0{
        willSet{
            print ("About to set totalSteps to \(newValue).")
        }
        didSet{
            if totalsteps > oldValue{
                print ("Added \(totalsteps - oldValue) steps.")
            }
        }
    }
}

var stepcounter = StepCounter()
stepcounter.totalsteps = 100
stepcounter.totalsteps = 250

struct temper{
    static let boilingpoint : Double = 100.0
    static func convertedfromfahrenheit(_ temperatureinfahrenheit : Double)-> Double {
        (((temperatureinfahrenheit - 32) * 5) / 9)
    }
}

let boilingpoint=temper.boilingpoint

let curtemp = temper.convertedfromfahrenheit(52)

let positivenumber = abs(-4.14)

struct Size {
      var width: Double
      var height: Double
  }

var someSize = Size(width: 250, height: 1000)
var anotherSize = someSize

someSize.width = 500

print(someSize.width)
print(anotherSize.width)
