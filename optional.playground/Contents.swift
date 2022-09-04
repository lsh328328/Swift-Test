import UIKit

// -> 옵셔널 초기값 nil
var name: String?

var optionalName: String? = "Crayon"
print(optionalName)

// 옵셔널 변수는 값이 없을 수도 있으므로 안전을 위해 옵셔널 변수 대입 x
// var requiredName: String = optionalName

// Optional binding
var number: Int? = 3
print(number)

// 옵셔널 강제 해제는 위험 값이 nil인경우 프로그램 종료됨
print(number!)

if let result = number {
    print(result)
} else {
    //~~~
}

func test() {
    let number: Int? = 5
    guard let result = number else { return }
    print(result)
}

test()

let value: Int? = 6
if value == 6 {
    print("value가 6입니다.")
} else {
    print("value가 6이 아닙니다.")
}

let string = "12"
// 묵시적 해제
let stringToInt: Int! = Int(string)
print(stringToInt + 1)
