let greeting = "Hello"
var othergreeting = "Salutations"

print(greeting)
print(othergreeting)

var string1 = "test1"
var string2 = string1

let joke = """
 
Q : what's 9 + 10 = ?
A : 21

"""
print(joke)

var s1 = "hello"
s1 = "abc" // mutable

print (s1 == s1)

let great  = "\t\t\tWC Final 2022\n \t\tArgentina 3 - 3 France\r\"kolo muani 1 on 1 with the keeper.\"\n\\save \n\"Martinaz!!!!!!!!!!!\""
print (great)

var mystring = ""
if mystring.isEmpty {
    print("the string is empty")
}

let strn1 = "hello"
let strn2 = ", world "
var mystrn = strn1 + strn2
print(mystrn)

mystrn += strn1 + " tp"

print(mystrn)

let name = "silverwolf"
let level = 999

print ("\(name) is Lv\(level)")

var s = name + "is Lv" + String(level)
print (s)

let a = 4
let b = 5
print ("if a is \(a) and b is \(b), then a+b equals \(a+b)")

let n1me = "mob"
if n1me.lowercased() == "MoB".lowercased() {
    print("the two names are equal")
}

let grenten = "Hello, World!"

print(grenten.hasPrefix("Hello"))
print(grenten.hasSuffix("World!"))
print(grenten.hasSuffix("world!"))
print(grenten.hasSuffix("Hello, World!"))
print(grenten.hasPrefix("Hello, World!"))

let greet = "Hi Mob , my name is Admiral"
if greet.contains("my name is"){
    print("Making an intro")
}

let count = greet.count

let newpassword = "1234"

if newpassword.count < 8 {
    print("This is too short")
}

let somecharacter: Character = "e"

switch somecharacter {
case "a","e","i","o","u":
    print("\(somecharacter) is a vowel")
default:
    print("\(somecharacter) is a consonet")
}

let fish = "🐟"
let credentials = "résumé"
let mybook = "∞, 私の本"
