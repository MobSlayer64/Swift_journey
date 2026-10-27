
class person {
    let name: String

    init(name:String){
        self.name = name
    }

    func sayHello() {
        print("Hello, there!")
    }
}

let person1 = person(name: "John")
print(person1.name)
person1.sayHello()

class somthingmeter {
    var count: Int

    init(count: Int = 0) {
        self.count = count
    }

   // @discardableResult
    func increment() -> Int {
        count += 1
        return count
    }
}

var somethingmeter1 = somthingmeter(count: 1000)
print(somethingmeter1.increment())

class vehicle{
    var currentSpeed: Int = 0
    var description : String{
        "travelling at \(currentSpeed) kmph"

    }
    func makenoise (){
        //5 star
    }
}

let somevehical = vehicle()
print("Vehicle: \(somevehical.description)")

class bicycle : vehicle{
    var hasbasket = false
}

let bicycle1 = bicycle()
bicycle1.hasbasket = true

bicycle1.currentSpeed = 15
print("Bicycle: \(bicycle1.description)")

class tandem: bicycle {
    var CurrentNumberOfPassangers = 0
}

let tandem1 = tandem()
tandem1.hasbasket = true
tandem1.CurrentNumberOfPassangers = 2
tandem1.currentSpeed = 22
print("Tandem : \(tandem1.description)")

class train : vehicle {
    override func makenoise() {
        print ("choo choo")
    }
}

class car : vehicle {
    var gear = 1
    override var description: String{
        super.description + " in gear \(gear)"
    }
}

let car1 = car()
car1.currentSpeed = 25
car1.gear = 3
print("Car: \(car1.description)")

class Person {
    let name : String

    init(name:String){
        self.name = name
    }
}

class student : Person {
    var favoritesubject : String
    init(name: String, favoriteSubject: String){
        self.favoritesubject = favoriteSubject
        super.init(name: name)
    }

}
