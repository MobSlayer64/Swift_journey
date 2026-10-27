struct book {
    let name: String
    let publicationyear : Int?
}

let firstdickens = book(name: "A Chirstmas Carol", publicationyear: 1843)

let seconddickens = book(name: "David Copperfield", publicationyear: 1849)

let boooks = [ firstdickens,seconddickens]

let unannouncedbook = book(name: "rebels and lions", publicationyear: nil)

var serverResponseCode: Int? = 404

 serverResponseCode = nil

if firstdickens.publicationyear != nil{
    let actualYear = firstdickens.publicationyear!
    print(actualYear)
}
let unwrappedyear = firstdickens.publicationyear!

print(type(of: firstdickens.publicationyear))
print(type(of: unwrappedyear))

if let unwrappedpublicationyear = unannouncedbook.publicationyear {
    print ("book was publiched in \(unwrappedpublicationyear)")
}else
{
    print("the book does not have a publication date")
}

func printFullname(firstname : String, middlename: String?, LastName: String){

}

//func textFromURL(url: URL) -> String?
struct toddler  {
    var birthname : String
    var monthsold : Int


    init?(birthname: String , monthsold: Int){
        if monthsold < 12 || monthsold > 36{
            return nil
        }else{
            self.birthname = birthname
            self.monthsold = monthsold
        }
    }
}

let possibletoddler = toddler(birthname: "bb1", monthsold: 14)
if let toddler = possibletoddler{
    print("\(toddler.birthname) is \(toddler.monthsold) months old")
}else{
    print("The age you specified for todddler is not between 1 and 3 year old")
}

struct person{
    var age : Int
    var residence : Residance?
}

struct Residance {
    var address: Address?
}

struct Address {
    var buildingnumber : String?
    var streetName : String?
    var ApartmentNO: String?
}

var Person = person(
    age: 30,
    residence: Residance(
        address: Address(
            buildingnumber: "221B",
            streetName: "Baker Street",
            ApartmentNO: "1"
        )
    )
)

if let theresidance = Person.residence{
    if let theAddress = theresidance.address{
        if let theApartmentno = theAddress .ApartmentNO{
            print("They live in apartment number \(theApartmentno)")
        }
    }
}
