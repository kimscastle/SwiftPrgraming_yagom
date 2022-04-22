indirect enum ArithmeticExpression {
    case num(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multipilcation(ArithmeticExpression, ArithmeticExpression)
}

let five: ArithmeticExpression = .num(5)
print(five)
let four: ArithmeticExpression = .num(4)
print(four)
let sum: ArithmeticExpression = .addition(five, four)
print(sum)
let final: ArithmeticExpression = .multipilcation(sum, .num(2))
print(final)

func printing(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case .num(let value):
        return value
    case .addition(let left, let right):
        return printing(left) + printing(right)
    case .multipilcation(let left, let right):
        return printing(left) * printing(right)
    }
}

let result: Int = printing(final)
print(result)
