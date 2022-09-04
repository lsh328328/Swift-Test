import UIKit

class Dog {
    var name: String = ""
    var age: Int = 0
    
    init() {
        
    }
    
    func introduce() {
        print("name \(name) age \(age)")
    }
}

var dog = Dog()
dog.name = "coco"
dog.age = 3
dog.name
dog.age

dog.introduce()

// init
class User {
    var nickname: String
    var age: Int
    
    init(nickname: String, age: Int) {
        self.nickname = nickname
        self.age = age
    }
    
    init(age: Int) {
        self.nickname = "albert"
        self.age = age
    }
    
    deinit {
        print("deinit user")
    }
}

var user = User(nickname: "crayon", age: 24)
user.nickname
user.age

var userTwo = User(age: 27)
userTwo.nickname
userTwo.age

var userThree: User? = User(age: 23)
userThree = nil
