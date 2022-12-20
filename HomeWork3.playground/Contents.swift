import UIKit

let a = 11
let b = 22

func sum (number1: Int, number2: Int) -> Int {
    return number1 + number2
}
print("1. сумма чисел равна:", sum(number1: a, number2: b))

let numberInWords = (numberInInt: 200, numberInString: "двести")

func transformation (myTuple: (Int, String)) -> String {
    return "2. число \(String(myTuple.0)) пишется как \(myTuple.1)"
}
print(transformation(myTuple: numberInWords))

typealias voidClosure = () -> Void
let myClosure: voidClosure = {
    print("3. число больше 0")
}
func moreZero (number: Int, closureFunc: voidClosure) {
    if number > 0 {
        closureFunc()
    }
}
moreZero(number: 10) {
    print("3. число больше 0")
}

func leapYear (year: Int) {
    if year % 4 != 0 {
        print("4. \(year) год невисокосный")
    } else {
        if year % 100 != 0 {
            print("4. \(year) год високосный")
        } else {
            if year % 400 == 0 {
                print("4. \(year) год високосный")
            }
            else {
                print("4. \(year) год невисокосный")
            }
        }
    }
}
leapYear(year: 100)
leapYear(year: 400)
leapYear(year: 2000)
leapYear(year: 2001)
