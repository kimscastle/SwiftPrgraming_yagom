//3.1 Int와 UInt
//둘다 정수타입이긴한데 Int는 +-를 둘다 포함하고 UInt는 +만 포함한다
//2진수는 접두어 0b
//8진수는 접두어 0o
//16진수는 접두어 0x
Int.random(in: -100...100)

//3.5 String

//let을 써서 상수로 선언했기 때문에 변경은 불가능함
let name: String = "youth"

//이니셜라이즈르르 사용해 빈 문자열을 상성할 수있음, var을 사용하면 문자열위 수정 및 변경이 가능함
var introduce: String = String()

//.append를 이용하면 문자열을 이어붙일 수 있음
introduce.append("제 이름은")
//여기서는 빈 문자열에 제 이름은이 들어가있는상황

//문자열을 이어붙일때는 + 를 이용하면 되는데 이 경우엔 띄어쓰기가 안되서 띄어쓰기는 " "로 표현을 해주거나 그래야함
introduce = introduce + " " + name + "입니다"
print(introduce)

print("name의 글자수 : \(name.count)개")
//결과 : 5개
print("introduce가 비어있습니까? : \(introduce.isEmpty)")
//결과 : False

let hello: String = "Hello"
let youth: String = "youth"
var greeting: String = hello + " " + youth + "!"
//그러면 이안에 \(youth)를 넣는거는 안되는걸까? => 해보니까 오류가 뜬다 \()의 경우에는 정말 print("내용")일떄 내용안에서만 쓸수있는 방식인듯싶다
print(greeting) //결과 : Hello youth!

greeting = hello
greeting += " "
greeting += youth
greeting += "!"
print(greeting) //결과 : Hello youth!

//연산자를 통한 문자열 비교
var isSameString: Bool = false

isSameString = hello == "Hello"
//이거 의미는 hello라는 변수(여기서는 "Hello")가 "Hello"와 동일한가?를 먼저 물어보고 여기서는 같으므로 true이고 그 값을 isSameString에 대입하라
//즉 결과 값은 true가 된다.

isSameString = hello == "hello"
//이거의 결과 값은 false가 된다.

var checkString:Bool = false //bool값에서 default값은 falsed임
checkString = hello.hasPrefix("He")
print(checkString)

checkString = hello.hasPrefix("he")
print(checkString)

checkString = hello.hasSuffix("ll")
print(checkString)

checkString = hello.hasSuffix("llo")
print(checkString)
//.hasPrefix는 첫글자 hello에서는 H로 시작하는지를 물어보는거고 .hasSuffix는 hello에서 o로 끝나는지를 물어본다는 차이가 있다
//.hasPrefix를 사용할거면 첫글자가 무조건 포함되어있어야하고 .hasSuffix를 사용할거면 마지막 글자가 무조건 포함되어있어야한다

var convertedString: String = "" //빈 문자열을 만들고 싶을때는 String()이나 ""둘중하나를 골라쓰면될듯 근데 개인적으로는 ""이 좀더 직관적인 느낌
convertedString = hello.uppercased()
print(convertedString)

//4.2 타입별칭
//이미존재하는 데이터 타입에 별칭을 붙여줄수있음
//타입에일리언스라고 부르며 에일리언스는 별명이라는 뜻임
typealias MyInt = Int
typealias YoutInt = Int

let age: MyInt = 26

//4.3튜플
//파이썬의 튜플과 유사함
//var person: (String, Int, Double) = ("youth", 100, 171) //이렇게 선언할 경우 인덱스를 통해서 값을 빼올 수있다
//print("이름은 \(person.0), 나이는 \(person.1), 키는 \(person.2)")
//근데 이렇게 하면 각 요소가 뭘 의미하는지를 알 수가 없다
//그래서 각요소에 변수 명을 달아주면 변수명으로 값을 빼올 수있다
var person: (name: String, age: Int, height: Double) = ("youth", 100, 171) //이렇게 선언할 경우 인덱스를 통해서 값을 빼올 수있다
print("이름은 \(person.name), 나이는 \(person.age), 키는 \(person.height)cm")
//근데 이렇게 하게되면 같은 유형으로 여려개를 만들때 문제가 된다 예를 들어, youth와 sso를 만든다고 하면

var person_youth: (name: String, age: Int, height: Double) = ("youth", 100, 171)
var person_sso: (name: String, age: Int, height: Double) = ("Soo", 100, 171)
print("이름은 \(person_youth.name), 나이는 \(person_youth.age), 키는 \(person_youth.height)cm")
print("이름은 \(person_sso.name), 나이는 \(person_sso.age), 키는 \(person_sso.height)cm")
//이렇게 매우 귀찮은 과정을 거치게 된다. 이렇게 된 가장 큰 이유는 튜플이라는 데이터 타입이 없기 때문이다 그렇기 떄문에 typealias를 이용해 데이터타입을 정의한다.

typealias PersonTuple = (name: String, age: Int, height: Double)

var Youth: PersonTuple = ("youth", 26, 171)
var SSo: PersonTuple = ("Sso", 28, 171)
print("이름은 \(Youth.name), 나이는 \(Youth.age), 키는 \(Youth.height)cm")
print("이름은 \(SSo.name), 나이는 \(SSo.age), 키는 \(SSo.height)cm")
//이렇게 하면 좀더 깔끔하게 튜플을 사용할 수 있다.

//4.4.1 배열
//선언정도만 뺴고 파이썬 array랑 비슷한부분이 매우 많은 느낌
//뭔가 상수들이 고정된 배열은 let으로 선언하면되고 변수들이 변하는 배열은 var로 선언하면됨

var names: [String] = ["youth", "picanpie", "Sso", "poding"]
var emptyArray: [Any] = []
//왠만하면 변수의 데이터타입을 선언할때는 any를 사용하면 안되는데 array의 경우엔 다양한 데이터 타입이 들어가니까 여기선 쓰는걸로

print(emptyArray.isEmpty)
print(names.count)
//파이썬 array랑 똑같이 0번째 부터 순서대로 나열되어있음, 그리고 요소 불러오는 방식도 똑같음

print(names[2])
names[2] = "eunice"
print(names[2])
print(names) //["youth", "picanpie", "eunice", "poding"]
names.append("Sso")
print(names) //["youth", "picanpie", "eunice", "poding", "Sso"]
names.append(contentsOf: ["young", "Lingo"])
print(names) //["youth", "picanpie", "eunice", "poding", "Sso", "young", "Lingo"]
names.insert("happy", at: 1)
print(names) //["youth", "happy", "picanpie", "eunice", "poding", "Sso", "young", "Lingo"]
names.insert(contentsOf: ["one", "two"], at: 3)
print(names) //["youth", "happy", "picanpie", "one", "two", "eunice", "poding", "Sso", "young", "Lingo"]

//인덱스를 알고싶으면 firstIndex(of: _)
print(names.firstIndex(of: "youth"))
print(names.first)
print(names.last)
