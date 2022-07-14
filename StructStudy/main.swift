//
//  StructStudyApp.swift
//  StructStudy
//
//  Created by MacBook Air on 2022/07/14.
//

import Swift

// struct 이름 {
// 구현부 {

struct Sample {
    var mutableProperty = 100 // 가변성 프로퍼티
    let immutableProperty = 100 // 불변성 프로퍼티
    
    static var typeProperty = 100 // 타입 프로퍼티
    
    func instanceMethod() { // 인스턴스 메소드
        print("instanceMethod")
    }
    
    static func typeMethod() { // 타입 메소드
        print("type method")
    }
    
}
    // Mark 구조체 사용
    
var mutable: Sample = Sample()
mutable.mutableProperty = 200 // var이 들어간 프로퍼티는 가변성이므로 값을 변경할 수 있다.
//mutable.immutableProperty = 200 // let이 들어간 프로퍼티는 불변성이므로 값을 변경할 수 없다.

// 구조체의 타입 프로퍼티 및 메소드
Sample.typeProperty = 300
Sample.typeMethod()

struct Student {
    var name: String = "Unknown"
    var `class`: String = "Swift"
    
    static func selfIntroduce() {
        print("학생타입입니다")
    }

    func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다.")
    }
}

Student.selfIntroduce() // 학생타입입니다

var yagom: Student = Student()

yagom.name = "야곰"
yagom.class = "스위프트"
yagom.selfIntroduce() // 저는 스위프트반 야곰입니다.

let jina: Student = Student()

// 불변 인스턴스이므로 프로퍼티 값 변경 불가
// 컴파일 오류 발생
// jina.name = "jina"
jina.selfIntroduce() // 저는 swift반 unknown 입니다

struct Fruit { // 구조체 선언
    var name: String = "melon" // 가변성 프로퍼티 (let일 경우 불변성 프로퍼티)
    var deli: String = "맛있게" // 가변성 프로퍼티
    
    static func eatFruit() { // 타입 메소드
    print("과일을 먹습니다")
}

    func eatFruit() { // 인스턴스 메소드
        print("나는 \(name)을 \(deli) 먹습니다")
    }
}

Fruit.eatFruit() // 구조체 Struct안에 있는 함수 eatFruit을 호출

var guest: Fruit = Fruit()

guest.name = "apple"
guest.deli = "맛없게"
guest.eatFruit()

let person: Fruit = Fruit()
person.eatFruit()

struct army { // 구조체
    var name: String = "navy" // 가변성 프로퍼티
    var count: String = "10,000" // 가변성 프로퍼티
    
    static func ship() { // static을 붙이면 구조체 프로퍼티의 프로퍼티 메소드가 된다.
        print("해군은 위풍당당하군요")
    }
    
    func ship() { // 인스턴스 메소드
        print("\(name)의 숫자는 \(count)입니다.")
    }
}

army.ship() // 해군은 위풍당당하군요. // 프로퍼티 메소드 호출

var army3: army = army() // var이 붙어있으면 내부의 프로퍼티를 수정할 수 있다.
army3.name = "UDT" // 프로퍼티 수정
army3.count = "300" // 프로퍼티 수정
army3.ship() // UDT의 숫자는 300입니다.

let army4: army = army() // let이 붙어있으면 내부의 프로퍼티를 수정할 수 없다.
army4.ship() // navy의 숫자는 10,000입니다.
    
    
    
    
    

























