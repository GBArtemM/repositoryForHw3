import UIKit
import Foundation

class StackClass<Element> {
    var elements: [Element] = []
        
    init(elements: [Element]){
        self.elements = elements
    }
    
    func push(_ element: Element) {
        elements.append(element)
    }
    
    func pop() -> Element? {
        return elements.popLast()
    }
    
    func printStack () {
        print(elements)
    }
}

var example = StackClass(elements: [1, 2, 3])
example.printStack()
example.push(4)
example.printStack()
example.pop()
example.printStack()
