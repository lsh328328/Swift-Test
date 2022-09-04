import Foundation

// 상수
// let 상수명: 데이터 타입 = 값
let a: Int = 100
// a = 200 -> 에러 발생

// 변수
// var 변수명: 데이터 타입 = 값
var b: Int = 200

// Int
var someInt: Int = -100
someInt = 100

// UInt
var someUInt: UInt = 100

// Float
var someFloat: Float = 1.1
someFloat = 1
print(someFloat)

// Double
var someDouble: Double = 1.1
someDouble = 1

// Bool
var someBool: Bool = true
someBool = false

// Character
var someCharacter: Character = "가"
someCharacter = "A"
someCharacter = "👾"

// String
var someString: String = "안녕하세요 👾"

// 타입 추론
var number = 10

// Collection
// Array, Dictionary, Set

var numbers: Array<Int> = Array<Int>()
numbers.append(1)
numbers.append(2)
numbers.append(3)

numbers[0]
numbers[1]

numbers.insert(4, at: 2)

numbers.remove(at: 0)
numbers

var names: [String] = []

var dicOne: Dictionary<String, Int> = Dictionary<String, Int>()
var dicTwo: [String: Int] = ["Crayon": 1]

dicTwo["김철수"] = 3
dicTwo["김민지"] = 5
dicTwo

dicTwo["김민지"] = 6
dicTwo

dicTwo.removeValue(forKey: "김민지")
dicTwo

var set: Set = Set<Int>()

set.insert(10)
set.insert(20)
set.insert(30)
set.insert(30)
set.insert(30)
set

set.remove(20)
set
