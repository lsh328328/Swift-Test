import UIKit

struct User {
    var nickname: String
    var age: Int
    
    func information() {
        print("\(nickname) \(age)")
    }
}

var user = User(nickname: "crayon", age: 24)

user.nickname
user.nickname = "ablert"
user.nickname

user.information()
