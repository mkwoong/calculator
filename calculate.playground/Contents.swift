//import UIKit
//
//var greeting = "Hello, playground"

class Calculator {
//    func add() -> Double {
//        return num1 + num2
//    }
//    
//    func subtract() -> Double {
//        return num1 - num2
//    }
//    
//    func multiply() -> Double {
//        return num1 * num2
//    }
//    
//    func divide() -> Double {
//        if num2 != 0 {
//            return num1 / num2
//        } else {return 0}
//    }
//    
//    func remain() -> Double {
//        if num2 != 0 {
//            return Double(Int(num1) % Int(num2))
//        } else {return 0}
//    }
    
    func calculate(operate:String) -> Double {
        switch operate {
        case "+":
            return add.add(num1: 20, num2: 10)
        case "-":
            return subtract.substract(num1: 20, num2: 10)
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
    func add(num1:Double, num2:Double) -> Double {
            return num1 + num2
        }
}

class SubstractOperation {
    func substract(num1: Double, num2: Double) -> Double {
            return num1 - num2
        }
}

class MultiplyOperation {
        func multiply(num1: Double, num2: Double) -> Double {
           return num1 * num2
        }
}

class DivideOperation {
        func divide(num1: Double, num2: Double) -> Double {
            if num2 != 0 {
                return num1 / num2
            } else {return 0}
        }
}

class RemainOperation {
        func remain(num1: Double, num2: Double) -> Double {
            if num2 != 0 {
                return Double(Int(num1) % Int(num2))
            } else {return 0}
        }
}


let add = AddOperation()
let subtract = SubstractOperation()
let multiply = MultiplyOperation()
let divide = DivideOperation()
let remain = RemainOperation()

let calculateResult = Calculator()
let addResult = calculateResult.calculate(operate: "+")
let subtractResult = calculateResult.calculate(operate: "-")
let multiplyResult = calculateResult.calculate(operate: "*")
let divideResult = calculateResult.calculate(operate: "/")
let remainResult = calculateResult.calculate(operate: "%")


print("addResult : \(addResult)")
print("subtractResult : \(subtractResult)")
print("multiplyResult : \(multiplyResult)")
print("divideResult : \(divideResult)")
print("remainResult : \(remainResult)")
