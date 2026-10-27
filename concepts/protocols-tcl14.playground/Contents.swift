
/*
 struct Student {
     var name : String

     func login(){
         print("\(name) logged in")
     }
 }

 struct Teacher {
     var name : String

     func login(){
         print("\(name) logged in")
     }
 }

 func performLogin(student: Student){
     student.login()
 }


 func performLogin(teacher : Teacher){
     teacher.login()
 }
 */

protocol Loginable {
    func login()
}
//strcut student is adopting the logginable protocol
// whenever any type of strcut , class ,etc adopt a protocol we need to comfirm that
struct Student : Loginable{
    var name : String

    func login(){
        print("\(name) logged in")
    }
}

struct Teacher: Loginable {
    var name : String

    func login(){
        print("\(name) logged in")
    }
}

func performLogin(user: Loginable){
    user.login
}

let student = Student(name: "s1")
let teacher = Teacher(name: "t2")

performLogin(user: student)
performLogin(user: teacher)

let string = "Hello, world!"
print (string)

let number = 42
print(number)

let boolean = false
print (boolean)

class shoe: CustomStringConvertible {
    let colour : String
    let size : Int
    let hasLanves : Bool

    init(colour: String, size: Int, hasLanves: Bool) {
        self.colour = colour
        self.size = size
        self.hasLanves = hasLanves
    }

    var description: String{
        return "shoe(colour: \(colour), size: \(size), hasLanves: \(hasLanves))"
    }
}

let myshoe = shoe(colour: "Red", size: 10, hasLanves: true)
print(myshoe)

struct Employee: Equatable, Comparable {

    let firstname: String
    let lastnmae: String
    let jobtitle: String
    let phonenumber: String

    static func < (lhs: Employee, rhs: Employee) -> Bool {

        if lhs.firstname != rhs.firstname {
            return lhs.firstname < rhs.firstname
        }

        if lhs.lastnmae != rhs.lastnmae {
            return lhs.lastnmae < rhs.lastnmae
        }

        if lhs.jobtitle != rhs.jobtitle {
            return lhs.jobtitle < rhs.jobtitle
        }

        return lhs.phonenumber < rhs.phonenumber
    }

    static func == (lhs: Employee, rhs: Employee) -> Bool {
        return lhs.firstname == rhs.firstname
    }
}


let firstobject = Employee(
    firstname: "f1",
    lastnmae: "l1",
    jobtitle: "j1",
    phonenumber: "p1"
)

let secondobject = Employee(
    firstname: "f1",
    lastnmae: "l2",
    jobtitle: "j1",
    phonenumber: "p1"
)

//Binary operator '==' cannot be applied to two 'Employee' operands
if firstobject == secondobject {
    print("they are equal")
}
else{
    print("they are not equal")
}


let emp1 = Employee(firstname: "Rahul", lastnmae: "Sharma", jobtitle: "Software Engineer", phonenumber: "9876543210")

let emp2 = Employee(firstname: "Priya", lastnmae: "Patel", jobtitle: "Project Manager", phonenumber: "9876543211")

let emp3 = Employee(firstname: "Amit", lastnmae: "Kumar", jobtitle: "UI Designer", phonenumber: "9876543212")

let emp4 = Employee(firstname: "Sneha", lastnmae: "Verma", jobtitle: "Data Analyst", phonenumber: "9876543213")

let emp5 = Employee(firstname: "Arjun", lastnmae: "Singh", jobtitle: "Backend Developer", phonenumber: "9876543214")

let employees = [emp1,emp2,emp3,emp4,emp5]

let sortedemployees = employees.sorted(by: <)

for employee in sortedemployees {
    print(employee)
}
