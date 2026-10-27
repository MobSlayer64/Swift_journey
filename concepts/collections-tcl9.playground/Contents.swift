
var  array1 : [Any] = ["a","b","c", 10, true]
if array1.contains(where :{$0 as? Int == 10}) {
     print("yes")
}
var array2 : [String] = ["f","d", "e"]
if array2.contains("a"){
    print("yes")
}

var myarray = [Int](repeating: 0, count:100)
let count = myarray.count
if myarray.isEmpty {}
print(count)

var names = ["n1", "n2","n3"]
let firstName = names[0]
print(firstName)

names[1] = "modn2"
print(names)

names.append("n4_ap1")
names += ["n5_ap2", "n6_ap2"]
print(names)

names.insert("n7_inst1" , at: 3)
print(names)

let removedElement = names.remove(at: 2)
print(names)

let removedElement2 = names.removeLast()
print(names)

names.removeAll()
print(names)

var newarray = array1 + array2
print(newarray)

let numarray1 = [1,2,3]
let numarray2 = [4,5,6]
let conatinedArray = [numarray1,numarray2]
let firstarray = conatinedArray[0]
let firstelement = conatinedArray[0][0]
print(conatinedArray)
print(firstarray)
print(firstelement)

var scores = ["p1" : 80 , "p2" : 100, "p3" : 85]
var myDictionary = [String: Int]()
// or
//var myDictionary = Dictionary<String, Int>()

scores["p4"] = 300
print(scores)

var oldvalue = scores.updateValue(250, forKey: "p2")
print(oldvalue)
print(scores)

if let removedvalue = scores.removeValue(forKey: "p3"){
    print(removedvalue)
}
print(scores)

let players = Array(scores.keys)
let points = Array(scores.values)

print(players)
print(scores)

let p4Score = scores["p4"]
print(p4Score)
