//4.5 열거형
//원시값(Raw value)이라고 하며 각 항목의 실제값?정도로 이해햐면 될거같음
enum School {
    case primary
    case element
    case middle
    case high
    case college
    case university
    case graduate
}
//enum School { case primary, elementary, middle, high, college, university, graduate }라고 해도 괜찮음
//var higtestEducationLevel: School = School.primary
//var highestEducationLevel: School = .primary
//print(higtestEducationLevel) //원시값이 없다면 변수값자체가 원시값


enum Schools: String {
    case primary = "유치원"
    case element = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
    case college = "대학"
    case university = "대학교"
    case graduate = "대학원"
}

let highestEducationLevel: Schools = .university
print(highestEducationLevel)

print("저의 최종학력은 \(highestEducationLevel.rawValue)입니다")

enum WeekDays: Character {
    case mon = "월", tue = "화", wed = "수", thu = "목", fri = "금", sat = "토", sun = "일"
}

let today: WeekDays = .tue
print("오늘은 \(today.rawValue)요일 입니다")

//
