import Foundation

let myAge = 22
let yourAge = 20

if myAge > yourAge {
    print("I am older than you")
} else if yourAge > myAge {
    print("You are older than me")
} else {
    print("We are the same age")
}

var myMotherAge = 33
myMotherAge += 3
print(myMotherAge)


// Unary operators can be prefix (appear before their target) or postfix (appear after their target)

// unary prefix
let isPassed = false
let isFailed = !isPassed
print("\(type(of: isFailed))")

// Unary Postfix Operator
let name = Optional("Steven")
print("type is: \(type(of: name))")
let unaryPostFix = name! // '!' is a unary postfix operator that force unwraps an Optional
print("Unary Postfix Operator: \(unaryPostFix) and it's type is: \(type(of: unaryPostFix))")

// binary infix
let product = myMotherAge * 2

let age = 22
let message = age >= 18 
  ? "You are an adult" 
  : "You are a child"

print(message)

/*
Types of Operators in Swift

Unary Operators:
These operators operate on a single target (e.g., !a).
Unary operators can be prefix (appear before their target) or postfix (appear after their target).

Binary Operators:
These operators operate on two targets (e.g., a + b).
Binary operators are infix operators because they are written between their two targets.

Ternary Operator:
The ternary operator operates on three targets. Swift has only one ternary operator, the ternary conditional operator (condition ? expr1 : expr2).
*/