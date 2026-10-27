import UIKit
import Foundation
// User Registration Validator

let firstName = "KaMaKshi"
let lastName = "Goyal"
let username = "KamaKshi_Goyal"
let password = "Swift@123"
let email = "kamakshi.goyal@mitwpu.edu.in"

// 1. Welcome message (capitalized properly)
print("Welcome, \(firstName.capitalized) \(lastName.capitalized)!")

// 2. Username validation

if username.lowercased().hasPrefix(String(firstName.prefix(3)).lowercased()) && username.contains("_") {
    print("Username is valid.")
} else {
    print("Username is invalid.")
}

// 3. Password validation

if password.count >= 8{
    print("Password length is valid.")
} else {
    print("Password must have at least 8 characters.")
}

if password.contains("@") {
    print("Password contains '@' symbol.")
} else {
    print("Password must contain '@' symbol.")
}

// 4. Email validation

if email.contains("@") && email.hasSuffix(".edu.in") {
    print("Educational email verified.")
} else {
    print("Invalid email address.")
}

// 5. Check first character of password using switch
let firstChar = password.prefix(1).lowercased()

switch firstChar {
case "a", "e", "i", "o", "u":
    print("Password starts with a vowel.")
default:
    print("Password starts with a consonant, number, or symbol.")
}

// 6. Compare first name and last name (case-insensitive)
if firstName.lowercased() == lastName.lowercased() {
    print("First name and last name are the same.")
} else {
    print("First name and last name are different.")
}

// Summary
var summary = ""

if summary.isEmpty {
    summary = "Registration Successful"
}

summary += " - Welcome to the iOS Development Centre!"
print(summary)
