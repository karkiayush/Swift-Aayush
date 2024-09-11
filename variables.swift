import Foundation

/*
let can't be assigned again
var can be assigned again.

The core concept is that var allows you to reassign new value to the variable or mutating it like in var array, we can append some new elements. 

Whereas in case of let, we can neither assign new value to variable nor we can mutate it. 
*/

let myName="Aayush"
var mySemester="vi"

// myName=mySemester
mySemester = myName
print(mySemester)

// Array
var names=[
  myName,
  mySemester
]

// Assigning new empty array to names array.
names=[]
//mutating the var array
names.append("little")
names.append("boy")

names.append("Bar")

print(names)

let foo = "foo"
var foo1 = foo
foo1 = "bar"
// Since here the variable called foo1 is referring to foo, it doesn't mean that when the value of foo1 is changed, the value of foo will change the value of foo. This is because we're working with "Value Types". Here when we do var foo1=foo, it is simply copying the value of foo variable and creating new instance of foo variable in foo1. 
print("Value of variable foo: \(foo)\n Value of variable foo1: \(foo1)")

/*Here the array is created which is a structure and structure is a "value type". 

When we mutate the array of var type, it doesn't reflect it's changes in the array of let type as shown below. 
*/
let moreNames=["foo", "bar", "damn"]
var cloneNames=moreNames
cloneNames.append("code")
print("moreNames: \(moreNames)\ncloneNames: \(cloneNames)")

//=============================================================//
/*NSMutableArray being a class(reference types), we can mutate the array inside it even if we use let type*/
let oldArray=NSMutableArray(
  array:[
    "though",
    "let",
    "array",
    "is",
    "immutable",
    "it",
    "is mutable in this case"
  ]
)

oldArray.add("since")
oldArray.addObjects(from: ["we","are using","NSMutableArray class which is a reference type"])

print(oldArray)

/*let's say if we assign the old array to another variable, then the changes occured in the new variable will show its effect in the old arrya as well whether the new variable is of let or var type*/
let newArray=oldArray
newArray.add("Quick")
print(newArray)
print(oldArray)

// This way of creation of array is not typesafe and is generally not recommended for Swift development. Instead, you can use Swift's native Array type, which is more powerful and safer.


let randomArr=NSMutableArray(
  array:[
    "Swift",
    "kotlin",
    "Dart",
    "Javascript",
    "Objective-C"
  ]
)

// NSMutableArray is extended from NSArray
func changeTheArray(_ array: NSArray){
  let copyArray=array as! NSMutableArray
  copyArray.add("Java")
}

changeTheArray(randomArr)
print(randomArr)

/*
Summary

Variable Mutability in Swift (let vs. var):
let declares a constant that cannot be reassigned or mutated after initialization.
var declares a variable that allows reassignment and mutation.

Value Types and Reference Types:
Value types, such as String or Array, create a copy when assigned to another variable. Changes to the copy do not affect the original.
Arrays in Swift are value types. When you assign an array to another variable, it creates a copy. Mutating the copy does not affect the original array.

Reference Types (NSMutableArray):
NSMutableArray is a reference type from Objective-C's Foundation framework. Modifying an NSMutableArray affects all references to it, even if it is declared with let.
When a new variable references an NSMutableArray, both variables refer to the same instance, so changes in one will reflect in the other.

Type Safety:
NSMutableArray is not type-safe and is generally not recommended for use in Swift. Swift's native Array is type-safe and is preferred for Swift development.

Mutating Arrays with a Function:
A function can cast an NSArray to NSMutableArray and mutate it, demonstrating how reference types can be manipulated even when passed as function parameters.
*/