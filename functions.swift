import Foundation

// Function with no arguments and no return value
func noArgsAndNoReturn() {
    print("No Arguments and No Return")
}

// Function that takes an argument and prints the result
func plusTwo(value: Int) {
    let newValue = value + 2
    print(newValue)
}

// Function that takes an argument and returns a value of Int type
func newPlusTwo(value: Int) -> Int {
    value + 2
}

// Function calls
noArgsAndNoReturn()
plusTwo(value: 33)
let addedVal = newPlusTwo(value: 22)
print(addedVal)

// Function with internal argument names
func customMinus(_ val1: Int, _ val2: Int) -> Int {
    val1 - val2
}

let customSubs = customMinus(22, 11)
print(customSubs) 

// The discardableResult annotation ensures that when the function is called, the result doesn't necessarily need to be consumed
@discardableResult
func addition(_ lhs: Int, _ rhs: Int) -> Int {
    lhs + rhs
}

// Function where the result must be consumed
func multiply(_ lhs: Int, _ rhs: Int) -> Int {
    lhs * rhs
}

print(addition(10, 10))
// multiply(10, 10) // Uncomment to use the result

// Function inside a function
func doSomethingComplicated(with value: Int) -> Int {
    // Nested function
    func mainLogic(value: Int) -> Int {
        value + 2
    }
    return mainLogic(value: value + 22)
}

print(doSomethingComplicated(with: 22))
