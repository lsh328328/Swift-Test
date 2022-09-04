import UIKit

// Named Clouser
// Unnamed Closure

let hello = { () -> () in
    print("hello")
}

hello()

let hello2 = { (name: String) -> String in
    return "Hello, \(name)"
}

// 전달인자 레이블 쓰면 에러발생
// hello2(name: "Crayon")
hello2("Crayon")

func doSomething(closure: () -> ()) {
    closure()
}

doSomething() {
    print("hello2")
}

doSomething {
    print("hello3")
}

// 이거 뭐임 버그임
doSomething(closure: { () -> () in
     print("hello")
})

doSomething(closure: {
    print("hello")
})


func doSomething2() -> () -> () {
    return { () -> () in
        print("hello4")
    }
}


doSomething2()()

func doSomething2(success: () -> (), fail: () -> ()) {
    
}

doSomething2 {
    
} fail: {
    
}

var arr = [1, 2, 3, 4, 5]

print(arr.sorted(by: {(first: Int, second: Int) -> Bool in return first > second}))

print(arr)

// 1. 후행 클로저 문법을 사용할 수 있다.
arr.sorted() {(first: Int, second: Int) -> Bool in return first > second}

arr.sorted {(first: Int, second: Int) -> Bool in return  first > second }


// 2. 매개변수와 리턴 타입 생략
arr.sorted() {(first, second) in return first > second}

// 3. 축약된 전달인자 이름
arr.sorted{return $0 > $1}

// 4. 암시적 반환 -> 클로저 내부의 실행문이 한 줄일때만 사용 가능
arr.sorted{$0 > $1}

// 5. 연산자 함수 사용
arr.sorted(by: >)

// 클로저 사용 목적

/*
 1. higher order function
 2. completion block
 
 1. 인풋으로 함수를 받을 수 있는 함수를 뜻한다. 고차함수
 인풋으로 줄 함수를 따로 만들어 사용할 수도 있지만, 고차함수를 사용하는 그 자리에서 바로 클로저를 만들어 인풋을 줄 수도 있다. 이때 클로저를 많이 사용하게 된다.
 
 2. 어떠한 task가 완료되었을 때 수행하는 블록을 뜻한다. 클로저는 비동기 작업에 많이 사용되는데, 비동기적인 어떠한 task가 끝나고 나서 수행해야 할 블록을 클로저로 작성하면 편리하다.
 */

// capturing value
/*
 값 캡처는 말 그대로 값을 캡쳐해서 사용하는 것을 말한다.
 값을 캡쳐해서 가지고 있다가, 필요할 때마다 이용하는 것이다.
 */

func add(num: Int) -> (() -> Int) {
    var total = 0
    func adding() -> Int {
        total += num
        return total
    }
    return adding
}

let add_1 = add(num: 1)
let add_2 = add(num: 2)

add_1()
add_1()
add_1()

add_2()
add_2()
add_2()
