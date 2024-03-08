//import UIKit
//
//var greeting = "Hello, playground"

class Calculator {
    let addOper = AddOperation()
    let subtractOper = SubstractOperation()
    let multiplyOper = MultiplyOperation()
    let divideOper = DivideOperation()
    let remainOper = RemainOperation()


    func calculate(_ operate: OperateType, _ num1: Double, _ num2: Double) -> Double {
        switch operate {
        case .add:
            return addOper.add(num1, num2)
        case .substract:
            return subtractOper.substract(num1, num2)
        case .multiply:
            return multiplyOper.multiply(num1, num2)
        case .divide:
            return divideOper.divide(num1, num2)
        case .remain:
            return remainOper.remain(num1, num2)
        }
    }
}

enum OperateType{
    case add
    case substract
    case multiply
    case divide
    case remain
}


/* 
 calculate 메서드에서 변수 한번에 받는법이 궁금했는데 arguement label 추가로 해결!
 operate를 처음에는 String으로 타입을 선언했었는데 받을 수 있는 입력값의 경우의 수가 너무 많다.
 >> 열거형으로 타입을 제한하면 조금더 명확한 코드작성 가능
*/

class AddOperation {
    func add(_ num1:Double, _ num2:Double) -> Double {
            return num1 + num2
        }
}

class SubstractOperation {
    func substract(_ num1: Double, _ num2: Double) -> Double {
            return num1 - num2
        }
}

class MultiplyOperation {
        func multiply(_ num1: Double, _ num2: Double) -> Double {
           return num1 * num2
        }
}

class DivideOperation {
        func divide(_ num1: Double, _ num2: Double) -> Double {
            if num2 != 0 {
                return Double(Int(num1) / Int(num2))
            } else {return 0}
        }
}

class RemainOperation {
        func remain(_ num1: Double, _ num2: Double) -> Double {
            if num2 != 0 {
                return Double(Int(num1) % Int(num2))
            } else {return 0}
        }
}




let calculateResult = Calculator()
let addResult = calculateResult.calculate(.add, 4, 2)
let subtractResult = calculateResult.calculate(.substract, 4, 2)
let multiplyResult = calculateResult.calculate(.multiply, 5, 3)
let divideResult = calculateResult.calculate(.divide, 7, 2)
let remainResult = calculateResult.calculate(.remain, 9, 8)


print("addResult : \(addResult)")
print("subtractResult : \(subtractResult)")
print("multiplyResult : \(multiplyResult)")
print("divideResult : \(divideResult)")
print("remainResult : \(remainResult)")
