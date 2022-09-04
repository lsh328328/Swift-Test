import UIKit

protocol SomeProtocolOne {
    
}

protocol SomeProtocolTwo {
    
}

struct SomeStructure: SomeProtocolOne, SomeProtocolTwo {
    
}

protocol FirstProtocol {
    var name: Int { get set }
    var age: Int { get }
}

protocol AnotherProtocol {
    static var someTypeProperty: Int { get set }
}

protocol FullyNames {
    var fullName: String { get set }
    func printFullName()
}

struct Person: FullyNames {
    var fullName: String
    
    func printFullName() {
        print(fullName)
    }
}

protocol SomeProtocolThree {
    func someTypeMethod()
}

protocol SomeProtocolFour {
    init(someParameter: Int)
}

protocol SomeProtocolFive {
    init()
}

class SomeClass: SomeProtocolFive {
    required init() {
        
    }
}
