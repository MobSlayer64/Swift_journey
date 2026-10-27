//create a struct emp, 3 fields - name , age , mobile number. define the initilizers
//code needs all 3 type of initializers - default , member wise and custom init

struct Emp {
    var Name: String
    var Age: Int
    var Mobile: Int
    var Address : String?
//member
    init(name: String, age: Int, mobile: Int,address : String?) {
        self.Name = name
        self.Age = age
        self.Mobile = mobile
        self.Address = address
    }
//default
    init () {
        self.Name = "peter"
        self.Age = 34
        self.Mobile = 2134532132
        self.Address = nil
    }
//custom
    init(name: String, mobile: Int, address : String?) {
        self.Name = name
        self.Age = mobile/10
        self.Mobile = mobile
        self.Address = address
    }
    init?(name: String, age : Int, mobile : Int){
        if age < 12 || age > 36{
             return nil
         }else{
             self.Name = name
             self.Age = age
             self.Mobile = mobile
         }
    }
}

let emp1 = Emp(name: "may", age: 55, mobile: 2248193000, address: "Manhattan")
let emp2 = Emp()
let cleanaddress = emp1.Address!
print(cleanaddress)
print(emp2)
