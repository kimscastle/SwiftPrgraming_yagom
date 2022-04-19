//4.4.2 딕셔너리
//딕셔너리는 키(key)와 값으로 구성되어있는 정보의 집합이다.
//tuple처럼 typealias로 데이터타입을 명시한 후 사용할 수 있다.
typealias StringIntDictionary = [String : Int]
var NameScore: StringIntDictionary = ["youth" : 100]
print(NameScore["youth"])
//아니면 데이터타입에 딕셔너리형식을 넣어주면 된다.
//var numberForName: [String : Int] = ["yagom" : 100, "chulsoo" : 200, "jenny" : 300]
var numberForName: StringIntDictionary = ["yagom" : 100, "chulsoo" : 200, "jenny" : 300]

print(numberForName.isEmpty)
print(numberForName.count)
print(numberForName["chulsoo"])
print(numberForName["minji"])
numberForName["max"] = 900
print(numberForName["max"])

print(numberForName.removeValue(forKey: "yagom"))//이러면 키와 값 모두 제거된다
print(numberForName)//["max": 900, "jenny": 300, "chulsoo": 200]
print(numberForName["yagom"])
print(numberForName["yagom", default: 0])

//4.4.3 세트
//보통 순서가 중요하지 않거나 각 요소가 유일한 값이어야 하는 경우에 사용한다
typealias nameSet = Set<String>
var names: nameSet = ["yagom", "chulsoo", "younghee", "yagom"]//array랑 형식이 같아서 데이터추론을 하면 array로 나옴
print(names.count)//집합이라고 생각하면 이해가 쉬움 중복된 값은 하나로 카운팅함

let englishClassStudents: nameSet = ["john", "chulsoo", "yagom"]
let koreanClassStudents: nameSet = ["jenny", "yagom", "chulsoo", "hana", "minsoo"]

//교집합
print(englishClassStudents.intersection(koreanClassStudents))

//여집합의합(교집합뺸나머지)
print(englishClassStudents.symmetricDifference(koreanClassStudents))

//합집합
print(englishClassStudents.union(koreanClassStudents))

//차집합
print(englishClassStudents.subtracting(koreanClassStudents))

let 새: nameSet = ["비둘기", "닭", "기러기"]
let 포유류: nameSet = ["사자", "호랑이", "곰"]
let 동물: nameSet = 새.union(포유류)

print(새)
print(포유류)
print(동물)

print(새.isDisjoint(with: 포유류)) //새와 포유류는 서로 배타적인지
print(새.isSubset(of: 동물)) //새는 동물의 부분집합인지
print(동물.isSuperset(of: 포유류)) //동물은 포유류의 전체집합인지
print(동물.isSuperset(of: 새)) //동물은 새의 전체집합인지
