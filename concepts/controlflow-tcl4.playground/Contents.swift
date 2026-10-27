class person {
    var name :String
    init(name: String) {
        self.name = name
    }

}

var p1 = person (name: "mob")
var p3 = p1
var p2 = person(name:"mob")

print(p1 === p2)
print(p1 === p3)

var temp = 100
if (temp >= 100) {
    print("boiling water")
}

let number = 100
let smallnumber = number < 10
print(smallnumber)
let speedlimit = 65
let currentspeed = 72
let isspeeding = currentspeed > speedlimit
print (isspeeding)

var value = 2
switch  value {
    case 1 : print ("one")
    fallthrough
case 2 : print ("two")
    fallthrough
case 3 : print ("three")
    fallthrough
case 4 : print  ("four")
case 5 : print ("five")
    fallthrough
default: print ("other")
}

let c = "z"
switch c {
case "a","e","i","o","u" :
print ("this is a vowel")
default :
print ("This is a consonant")
}

let distance = 500

switch distance {
case 0...9:
    print("close")
case 10...99 :
    print("mid")
case 100...999:
    print ("far")
default:
      print("space")
}

temp = 75
switch temp {
case Int.min...64 :
    print("cold")
case 65...75:
    print("right")
default:
    print("hot")
}

var largest : Int
let a = 15 , b=4
largest = a>b ? a:b
print (largest)
