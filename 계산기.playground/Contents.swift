//import UIKit
//
//var greeting = "Hello, playground"

class Calculator {
    var num1: Double = 0
    var num2: Double = 0
    var oprerate: String = ""
    
    func calculate(operate:String)-> Double{
        switch operate {
        case "+":
            return add.add(num1: 20, num2: 10)
        case "-":
            return subtract.nimus(num1: 20, num2: 10)
        case "*":
            return multiply.multiply(num1: 20, num2: 10)
        case "/":
            return divide.divide(num1: 20, num2: 10)
        case "%":
            return remain.remain(num1: 20, num2: 10)
        default:
            return 0
        }
    }
}

class AddOperation {
    var num1: Double = 0
    var num2: Double = 0
        func add(num1: Double, num2: Double) -> Double {
            return num1 + num2
        }
}

class SubstractOperation {
    var num1: Double = 0
    var num2: Double = 0
    func nimus(num1: Double, num2: Double) -> Double {
            return num1 - num2
        }
}

class MultiplyOperation {
    var num1: Double = 0
    var num2: Double = 0
        func multiply(num1: Double, num2: Double) -> Double {
           return num1 * num2
        }
}

class DivideOperation {
    var num1: Double = 0
    var num2: Double = 0
        func divide(num1: Double, num2: Double) -> Double {
            return num1 / num2
        }
}

class Remainoperation {
    var num1: Double = 0
    var num2: Double = 0
    func remain(num1: Double, num2: Double) -> Double {
        return Double(Int(num1) % Int(num2))
    }
}


let calcu = Calculator()

let add = AddOperation()
let subtract = SubstractOperation()
let multiply = MultiplyOperation()
let divide = DivideOperation()
let remain = Remainoperation()


let AddResult = calcu.calculate(operate: "+")
let SubtractResult = calcu.calculate(operate: "-")
let MultiplyResult = calcu.calculate(operate: "*")
let DivideResult = calcu.calculate(operate: "/")
let RemainResult = calcu.calculate(operate: "%")


print("addResult : \(AddResult)")
print("subtractResult : \(SubtractResult)")
print("multiplyResult : \(MultiplyResult)")
print("divideResult : \(DivideResult)")
print("remainResult : \(RemainResult)")
