// This playground is still under construction

import Cocoa

var str = "Hello, playground"

// Function takes and returns a double
func square(a:Int) -> Int {
    return a * a
}

func odd(a:Int) -> Bool {
    return ((a % 2) == 0)
}

func toAString(a:Int, b:Int) -> String {
    return "\(a) - \(b)"
}

// Two return values
func funtionWithTwoReturnValues() ->(first:String, second:Int) {
    return ("Hello", 3);  // always returns hello and 3
}

// Call it once
square(9)
toAString(1, 2)

// Variadic Paramerters
func variadicFunction(strings:String...) {
    // Using a for-loop because closures aren't working right
    var returnString = ""
    for s in strings {
        returnString += s
    }
}
variadicFunction("Hello")
variadicFunction("Hello", "World", "!")

// Force the name to be used for all parameters externally
func requiredParamName(extName aName: String) -> String {
    return aName;
}
requiredParamName(extName: "test");

// Force name, but use the locally defined name
func requiredParamName2(#aName: String) -> String {
    return aName;
}
requiredParamName2(aName: "test");

// Default parameters in function
func defaultParamFunction(aName:String = "Test") -> String {
    return aName;
}
defaultParamFunction()
defaultParamFunction(aName: "Different")



// call it as a closure
var numbers: Array<Int> = [1,2,3,4,5,6,7,8,9]
numbers.map(square)
numbers.map({$0 * $0})
let describedArray = numbers.map { "Number: \($0)" }

// Call it as a filter
numbers.filter(odd)
numbers.filter({$0 % 2 == 0})

// Call it in a reduction
numbers.reduce(0, + )
var reversed = sort(numbers, { $0 > $1 } )
reversed = sort(numbers, > )
reversed

// Variable parameter for function
var testString = "Testing"
func varParameterFunction(var variable:String) {
    variable = "New String"  // Can change the parameter value.  Can't do this without var
    println(variable)
}
varParameterFunction(testString)  // Will always print New String

// in and out parameter function
func inoutParameterFunction(inout inoutString:String) {
    inoutString = "Different String"
    println(inoutString)
}
inoutParameterFunction(&testString)  // The & is required to use the variable after passing it






