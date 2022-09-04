import UIKit

enum CompassPoint: String {
    case north = "북"
    case south = "남"
    case east = "동"
    case west = "서"
}

var direction = CompassPoint.east

// 타입 추론으로 인해 .으로 바로 CompassPoint 접근 가능
direction = .west


// 여기서는 왜 default 안써줘도 exhaustive 에러 안남?
switch direction {
case .north:
    print(direction.rawValue)
case .south:
    print(direction.rawValue)
case .east:
    print(direction.rawValue)
case .west:
    print(direction.rawValue)
}

let directionTwo = CompassPoint(rawValue: "남")
enum PhoneError {
    case unknown
    case batteryLow(String)
}

let error = PhoneError.batteryLow("배터리가 곧 방전됩니다.")

switch error {
case .batteryLow(let message):
    print(message)
case .unknown:
    print("알 수 없는 에러입니다.")
}
