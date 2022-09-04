import UIKit

/*
 func 함수명(파라미터 이름: 데이터 타입) -> 변환 타입 {
    return 반환 값
 }
 */

func sum(a: Int, b: Int) -> Int {
    return a + b
}

func hello() -> String {
    return "Hello"
}

func printName() {
    print("name")
}

func greeting(friend: String, me: String = "gunter") {
    print("Hello, \(friend)! I'm \(me)")
}

sum(a: 5, b: 3)

hello()

greeting(friend: "Crayon")

/*
 func 함수 이름(전달인자 레이블: 매개변수 이름: 매개변수 타입, 전달인자 레이블: 매개변수 이름: 매개변수 타입...) -> 반환 타입 {
    return 반환 값
 }
 */
func sendMessage(from myName: String, to name: String) -> String {
    return "Hello \(name)! I'm \(myName)"
}

// 코드 가독성을 더 좋게 할 수 있을듯?
sendMessage(from: "Gunter", to: "Json")

func sendMessage(_ name: String) -> String {
    return "Hello \(name)"
}

sendMessage("Crayon")

func sendMessage(me: String, friends: String...) -> String {
    return "Hello \(friends)! I'm \(me)"
}

sendMessage(me: "Crayon", friends: "Json", "Albert", "Stella")
