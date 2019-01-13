// @author      Archie Disono
// @version     1.0


import UIKit

// ----------------------------------------------------------------------------------------------------------------------
// Variables
//
// Summary:
// - var = variable
// - let = constant
// - an optional value either contains a value or nil to indicate that a value is missing
// - write a question mark (?) after the type of a value as optional
// - provide default value using (??) operator, if the optional value is nil the defualt value is used insted
// ----------------------------------------------------------------------------------------------------------------------

// implicit variable
var implicitInteger = 10

// explicit variable
var explicityInteger: Int = 10

// optional variable
var optionalString: String? = "This is a optional string."

// variable
var dogName = "Dragon"

// constant
let catName = "Rat"

// variable with type explicitly
var age: Int
age = 100

// convert variable to another type
var convertIntToString = String(age)

// include value inside a string
var sentence = "This is a sentence with \(catName)"

// multiple line text
let quote = """
This is a
multiple line
text.
"""

// variable with default value
let variableOptionalValue: String? = nil
let defaultVal: String = "Default Value"
print("Sample with default value: \(variableOptionalValue ?? defaultVal)")

// ----------------------------------------------------------------------------------------------------------------------
// Arrays and Dictionaries
//
// Summary:
// - create arrays and dictionaries using brackets [DataType]()
// - access their values by index or key in brackets
// - comma is required after the last element
// - create dictionaries using brackets [DataType: DataType]
// ----------------------------------------------------------------------------------------------------------------------

// empty array or initialized
var emptyArray = [String]()

// creating an array
var shoppingList = ["Chocolate", "Cereal"]
shoppingList[0] = "Soap"

// creating an dictionary
var occupations = [
    "Goku": "Nurse",
    "Naruto": "Doctor"
]
occupations["Goku"] = "Jobless"

// empty dictionary
var emptyDictionary = [String: String]()

// type information can be infered
shoppingList = []
occupations = [:]

// ----------------------------------------------------------------------------------------------------------------------
// Flow Control
//
// Summary:
// - if and switch to make conditions
// - use for-in, while and repeat-while to make loops
// - parenthesis is optional ()
// - braces is required {}
// - if statement the condition must be a boolean expression
// - you can use if and let together to work with values that might be missing
// - switches support any kind of data and wide variety of comparison operations
// ----------------------------------------------------------------------------------------------------------------------

// if statement
var isTrueVar = true
if isTrueVar == true {
    print("This is true.")
}

// compare nil
if optionalString == nil {
    print("This string is nil.")
}

// if and let
optionalString = nil
if let name = optionalString {
    print("Name is not optinal: \(name)")
} else {
    print("Name is nil.")
}

// switch statement
var veg = "Potato Grass"
switch veg {
case "Apple":
    print("Apple is not a vegetable.")
case "Cucumber", "Potato":
    print("We found the Potato.")
case let x where x.hasSuffix("Grass"):
    print("Potato Grass really? \(x)")
default:
    print("Vegetable is not found.")
}

