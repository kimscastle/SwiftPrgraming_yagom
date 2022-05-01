//4.5 열거형
//원시값(Raw value)이라고 하며 각 항목의 실제값?정도로 이해햐면 될거같음
//enum School {
//    case primary
//    case element
//    case middle
//    case high
//    case college
//    case university
//    case graduate
//}
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
    case university
    case graduate = "대학원"
}

let highestEducationLevel: Schools = .university
highestEducationLevel
highestEducationLevel.rawValue
print("저의 최종학력은 \(highestEducationLevel)입니다")

enum WeekDays: Character {
    case mon = "월", tue = "화", wed = "수", thu = "목", fri = "금", sat = "토", sun = "일"
}

let today: WeekDays = .tue
print("오늘은 \(today.rawValue)요일 입니다")

//4.5.3 연관값
enum MainDish {
    case pasta(taste: String)
    case pizza(dough: String, topping: String)
    case chicken(withSauce: Bool)
    case rice
}

var dinner: MainDish = .pasta(taste: "크림")
print(dinner)
dinner = .pizza(dough: "치즈크러스트", topping: "불고기")
print(dinner)
dinner = .chicken(withSauce: true)
print(dinner)
dinner = .rice
print(dinner)

enum PastaTaste {
    case cream, tomato
}

enum PizzaDough {
    case cheeseCrust, thin, original
}

enum PizzaTopping {
    case pepperoni, cheese, bacon
}
//
//var dinner: MainDish = .pasta(taste: PastaTaste.tomato)
//dinner = .pizza(dough: PizzaDough.cheeseCrust, topping: PizzaTopping.pepperoni)
//
//enum School: String, CaseIterable {
//    case primary = "유치원"
//    case elementary = "초등학교"
//    case middle = "중학교"
//    case high = "고등학교"
//    case college = "대학"
//    case university = "대학교"
//    @available(iOS, obsoleted: 12.0)
//    case graduate = "대학원"
//
//    static var allCases: [School] {
//        let all: [School] = [.primary, .elementary, .middle, .high, .college, .university]
//
//        #if os(iOS)
//        return all
//        #else
//        return all + [.graduate]
//        #endif
//    }
//}
//
//let allCases: [School] = School.allCases
//print(allCases)     // 실행환경에 따라 다른 결과
///* [School.primary, School.elementary, School.middle, School.high, School.college, School.university */

