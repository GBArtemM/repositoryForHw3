import UIKit

func plus(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func minus(_ a: Int, _ b: Int) -> Int {
    return a - b
}

typealias CalcFunc = (Int, Int) -> Int

func calc(function: CalcFunc, _ a: Int, _ b: Int) -> Int {
    return function(a, b)
}

calc(function: minus(_:_:), 4, 1)

print(calc(function: plus(_:_:), 4, 1))

func calcOperation(_ a: Int, _ b: Int, _ plus: (Int, Int) -> Int,  _ minus: (Int, Int) -> Int) -> (Int, Int){
    return (plus(a, b), minus(a, b))
}
let x = 10
let y = 20
print(calcOperation(x, y, {$0 + $1}, {$0 - $1}))

var names = ["Alex", "Artem", "Olga"]
func printName(nextName: @autoclosure () -> String) {
    print(nextName())
}
printName(nextName: names.remove(at: 0))

func nestedCalc(_ a: Int, _ b: Int) {
    func plus(_ a1: Int, _ b1: Int) -> Int {
        return a + b
    }
    func minus(_ a2: Int, _ b2: Int) -> Int {
        return a - b
    }
    let resultPlus = plus(a, b)
    let resultMinus = minus(a, b)
    
    print("Сумма: \(resultPlus)")
    print("Разница: \(resultMinus)")
}
nestedCalc(10, 5)

