import UIKit

class Human {
    final var firstName: String = "[unnamed]"
    final var secondName: String = "[unnamed]"
    final var age: Int = 0
    var hobby: String = "no hobby"
    init(firstName: String, secondName: String, age: Int, hobby: String) {
        self.firstName = firstName
        self.secondName = secondName
        self.age = age
        self.hobby = hobby
    }
    init(firstName: String) {
        self.firstName = firstName
    }
    
    func sayHello() {
        print("Hello, my name is " + firstName + " " + secondName)
    }
    func getFullInfo() -> String {
        return "\(self.firstName) \(self.secondName) - \(self.age) y.o., hobby - \(self.hobby)"
    }
}
var human1 = Human(firstName: "Ivan", secondName: "Ivanov", age: 32, hobby: "runing")

var human2 = Human(firstName: "Gleb", secondName: "Glebov", age: 18, hobby: "footbal")

var human3 = Human(firstName: "Mike")



class Developer: Human {
    enum progLeng {
        case swift
        case java
        case kotlin
    }
    private var progLeng: progLeng
    private var progExperience: Int
    init(firstName: String, secondName: String, age: Int, hobby: String, progLeng: progLeng, progExperience: Int){
        self.progLeng = progLeng
        self.progExperience = progExperience
        super.init(firstName: firstName, secondName: secondName, age: age, hobby: hobby)
    }
    override func getFullInfo() -> String {
        return "\(super.getFullInfo()), programming on language \(self.progLeng) for \(self.progExperience) years"
    }
    
    func howLongProg () -> String {
        return "\(super.firstName) started programming at the \(super.age - progExperience) y.o."
    }
}

var human4 = Developer(firstName: "German", secondName: "Germanov", age: 19, hobby: "footbal", progLeng: Developer.progLeng.swift, progExperience: 3)
var human5 = Developer(firstName: "Artem", secondName: "Artemov", age: 29, hobby: "reed books", progLeng: Developer.progLeng.java, progExperience: 13)

class Director: Human {
    private var workExp: Int
    private var companyName: String
    init(firstName: String, secondName: String, age: Int, hobby: String, companyName: String, workExp: Int){
        self.workExp = workExp
        self.companyName = companyName
        super.init(firstName: firstName, secondName: secondName, age: age, hobby: hobby)
    }
    override func getFullInfo() -> String {
        return "\(super.getFullInfo()), directed \(self.companyName) for \(self.workExp) years"
    }
    func howLongWork () -> String {
        return "\(super.firstName) started working in \(super.age - workExp) y.o."
    }
}
var human6 = Director(firstName: "Alex", secondName: "Ivanov", age: 45, hobby: "basketball", companyName: "Apple", workExp: 15)


let array = [human1, human2, human3, human4, human5, human6]

for human in array {
    print(human.getFullInfo())
}


