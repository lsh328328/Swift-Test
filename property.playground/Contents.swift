import UIKit

// 저장 프로퍼티
// 연산 프로퍼티
// 타입 프로퍼티

struct Dog {
    var name: String
    let gender: String
}

var dog = Dog(name: "crayon", gender: "Male")
print(dog)

dog.name = "이승헌"
// 상수 변경 불가능
// dog.gender = "female"

let dogTwo = Dog(name: "crayon", gender: "male")
// 구조체는 value 타입
// 구조체 인스턴스를 상수로 선언하면 내부 필드도 전부 상수로 변경
// dogTwo.name = "이승헌"

class Cat {
    var name: String
    let gender: String
    
    init(name: String, gender: String) {
        self.name = name
        self.gender = gender
    }
}

let cat = Cat(name: "json", gender: "male")
// 클래스는 참조타입이기 때문에 인스턴스를 상수로 선언해도 프로퍼티 값 변경 가능
cat.name = "crayon"
print(cat.name)

struct Stock {
    var averagePrice: Int
    var quantity: Int
    var purchasePrice: Int {
        get {
            return averagePrice * quantity
        }
        
        set(newPrice) {
            averagePrice = newPrice / quantity
        }
    }
}

var stock = Stock(averagePrice: 2300, quantity: 3)
print(stock)
stock.purchasePrice
stock.purchasePrice = 3000
stock.averagePrice

class Account {
    var credit: Int = 0 {
        // 소괄호 이름 지정
        willSet {
            print("잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정입니다.")
        }
        
        didSet {
            print("잔액이 \(oldValue)원에서 \(credit)원으로 변경되었습니다.")
        }
    }
}

var account = Account()
account.credit = 1000

struct SomeStructure {
    static var storedTypeProperty = "Some value"
    static var computedTypeProperty: Int {
        return 1
    }
}

SomeStructure.computedTypeProperty
SomeStructure.storedTypeProperty
SomeStructure.storedTypeProperty = "hello"
SomeStructure.storedTypeProperty


// 클래스와 구조체의 공통점
/*
 값을 저장할 프로퍼티를 선언할 수 있습니다.
 함수적 기능을 하는 메서드를 선언 할 수 있습니다.
 내부 값에 .을 사용하여 접근할 수 있습니다.
 생성자를 사용해 초기 상태를 설정할 수 있습니다.
 extention을 사용하여 기능을 확장할 수 있습니다.
 Protocol을 채택하여 기능을 설정할 수 있습니다.
 */

// 클래스와 구조체의 차이점
/*
 클래스
 - 참조 타입
 - ARC로 메모리를 관리
 - 상속이 가능
 - 타입 캐스팅을 통해 런타임에서 클래스 인스턴스의 타입을 확인할 수 있음
 - deinit을 사용하여 클래스 인스턴스의 메모리 할당을 해제할 수 있음
 - 같은 클래스 인스턴스를 여러 개의 변수에 할당한 뒤 값을 변경 시키면 모든 변수에 영향을 줌 (메모리 복사)
 */

/*
 구조체
 - 값 타임
 - 구조체 변수를 새로운 변수에 할당할 때마다 새로운 구조체가 할당됩니다
 - 즉 같은 구조체를 여러 개의 변수에 할당한 뒤 값을 변경시키더라도 다른 변수에 영향을 주지 않음 (값 자체 복사)
*/

class SomeClass {
    var count: Int = 0
}

struct SomeStruct {
    var count: Int = 0
}

var classOne = SomeClass()
var classTwo = classOne
var classThree = classOne

classThree.count = 2
classOne.count

var structOne = SomeStruct()
var structTwo = structOne
var structThree = structOne

structTwo.count = 3
structThree.count = 4

structOne.count
structTwo.count
structThree.count
