for i in 1..<5 {
    print(i)
}

for _ in 1...5 {
    print("hello")
}

let names = ["n1", "n2,","n3"]
for name in names {
    print("hello \(name)")
}

for letters in "adjfh" {
    print(letters)
}

for(index, letter) in "dshchisdofs".enumerated()
{
    print("\(index) : \(letter)")
}

let vehicles = ["unicycle" : 1,"bicycle" : 2, "tricyvle" : 3 , "car" : 4]
for (vehicleName, Wheelcount) in vehicles {
    print("A \(vehicleName) has \(Wheelcount) wheels")
}
