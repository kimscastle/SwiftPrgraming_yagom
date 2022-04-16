//2.2.2문자열 보간법
//문자열보간법은 문자열사이에 상수나 변수를 넣고 싶을때 쓰는 방법 아주자주 쓰니까 잊어버리면 안댐
//파이썬에서는 {}하고 .format해가지고 넣었던거 같은데 편해진건가 아닌건가 잘 모르겟다 그리고 /이게 아니라 엔터위에 \이거다

//import Darwin
//let name: String = "김의성"
//print("my name is \(name)")


//2.3주석
// 한줄 주석은 //이거를 쓰면되고 여러줄 주석은 /* */이 사이에 내용을 쓰면됨
// 마크업이라는 문법이있는데 내가 설명을 문서로 만들고 싶은 함수 위에대가 ///이걸 하거나 /** */이렇게 하면 되는듯?
/// 오류 타입의 열거형
/// - noName: 이름을 전달받지 못했을 때 발생하는 오류
/// - incorrectAge(age: Int) : 나이가 0세 미만, 150세 초과인 경우 잘못된 나이로 인식하여 오류로 처리
/// - unknown : 알 수 없는 오류
enum HelloError: Error {
    case noName
    case incorrectAge(age: Int)
    case unknown
}
/**
 여기에 작성되는 텍스트는 Description 부분에 표기됩니다.
 
 텍스트 간에 한 줄을 비워놓으면 줄바꿈이 됩니다.
 
 '-', '+', '*'를 사용하여 원형 글머리 기호를 사용할 수 있습니다.
 
 - 이렇게 말이죠
 + 이렇게도 되고요
 * 이렇게도 됩니다
 
 아니면 번호로 글머리 기호를 매겨줄 수도 있습니다.
 
 1. 1번
 2. 2번
 6. 3번
 
 눈치채셨겠지만 앞에 붙는 번호는 크게 중요하지 않습니다. 자동으로 번호를 매겨주죠.
 
 ---
 문단 바꿈
 
 바를 세 개 이상 사용하면 긴 줄로 문단을 나눠줍니다.
 
 ---
 
 언더바 또는 별표를 사용하여 텍스트를 강조할 수 있습니다.
 
 텍스트를 기울이고 싶으면 *A pair of marks*를 사용하여
 
 텍스트를 굵게 표기하고 싶으면 **Two pair of marks**를 사용하면 됩니다.
 
 관련 링크도 넣어줄 수 있습니다.
 [Swift Blog](https://swif.org/blog/)
 
 ---
 등호를 사용하면 바로 위 텍스트를 큰 제목으로 표시해줍니다. 텍스트 앞에 #을 하나 붙여줘도 동일한 효과를 냅니다.
 
큰 제목 표시(등호)
 ==
 
# 큰 제목 표시(#)
 
 바를 사용하면 바로 위 텍스트를 중간 크기 제목으로 표시해줍니다. 텍스트 앞에 #을 두 개 붙여줘도 동일한 효과를 냅니다.
 
 사용 예(바)
 ---
 ## 사용 예(##)
 
 다른 텍스트보다 네 칸 이상 들여쓰기 하면 코드 블록을 만들어줍니다. 또한 강세표(backquote, `)를 세 개 이상 한 쌍으로 묶어도 코드 블록을 만들어 줍니다.
 
     // 코멘트도 넣어줄 수 있다.
     let myName: String = "yagom"
     try helloSwift(myName, yourAge: 100)
 
 ````
 let myName; String = "yagom"
 try helloSwift(myName, yourAge: 100)
 ````
 
 Precondition, Postcondition, Requires, Invariant, Complexity, Important, Warning, Author, Authors, Copyright, Date, SeeAslo, Since, Version, Attention, Bug, Experiment, Note, Remark, ToDo 등의 키워드를 통해 적절한 정보를 제공해보세요.
 - note : 강조하고픈 메모를 노트로 남겨둘 수 있습니다.
 - author : 작성자를 남길 수 있습니다.
 - warning: 주의해야 할 점을 남길 수도 있습니다. *주의: 하등 쓸모없는 함수임.
 
 ---
 > 매개변수와 반환 값 등도 적절히 표기해줄 수 있습니다.
 - parameters:
    - yourName: 당신의 이름.
    - yourAge: 당신의 나이. 0 미만 또는 150을 초과하면 오류 발생
 - Throws: 오류가 발생하면 HelloError의 한 케이스를 throw
 - returns: Hello string
 */
func helloSwift(yourName: String?, yourAge age: Int = 0) throws -> String {
    guard let name: String = yourName else {
        throw HelloError.noName
    }
    if age > 150 {
        throw HelloError.incorrectAge(age: age)
    }
    
    return "Hello Swift! My name is \(name)." + (age > 0 ? " I'm \(age) years old." : "")
}

//2.4변수와 상수
//스위프트에서 변수를 생성하려면 var키워드를 사용합니다. var은 variable의 약자인걸로
//var [변수명]: [데이터 타입] = [값]의 형태로 선언합니다
//선언할때 테이터 타입은 생략 가능
//타입지정 - 변수나 상수뒤에 ":"을 붙이고 데이터 타입을 명시하는것을 뜻함
//타입추론 - 변수나 상수뒤에 ":"을 붙이지 않고 선언하는 것을 뜻함
//타입추론은 추천하지 않음 왠만하면 타입지정으로 변수나 상수를 선언할것

var name: String = "김의성"
var age: Int = 19
var job: String = "ios 개발자 꿈나무"
var height = 171
print("\(type(of: height))")
age = 99
job = "write"
print("저의 이름은 \(name)이고, 나이는 \(age)세이며, 직업은 \(job)입니다. 비밀이지만, 키는 \(height)센치미터입니다")

//스위프트에서 상수는 let키워드를 이용해서 상수를 생성함
//let [상수명]: [데이터타입] = [값] 이떄도 마찬가지로 타입추론이나 타입지정이 가능하지만 왠만하면 타입지정으로 선언하는걸 추천
let name_2: String = "youth"
//name_2 = "youth2" -> name_2는 상수로 선언했기 때문에 이렇게 값을 바꾸면 error가 발생한다
print("저의 이름은 \(name_2)입니다.")
