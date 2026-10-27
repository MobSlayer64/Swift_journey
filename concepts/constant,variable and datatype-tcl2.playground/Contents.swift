struct person {
    let firstName: String
    let lastName: String

    func sayhello()  {
       print("Hello, my name is \(firstName) \(lastName)!")
    }
}

let person1 = person(firstName : "John", lastName : "Snow")


person1.sayhello()

var x : Int
print(x)
