import UIKit

//                  Lesson 19. Enums

//              Homework

/*
 Задание 1

 1) В конце главы про “Перечисления” мы с вами начали создавать перечисление ArithmeticExpression, позволяющее выполнять арифметические операции. Сейчас перед вами стоит задача доработать данное перечисление, чтобы оно могло производить любые арифметические операции, включая сложение, вычитание, умножение, деление и возведение в степень.
 2) Проверьте работу перечисления на произвольных примерах
 */

indirect enum ArithmeticExpression {
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case substraction(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
    case division(ArithmeticExpression, ArithmeticExpression)
    case power(ArithmeticExpression, ArithmeticExpression)

    func evaluate( _ expression: ArithmeticExpression? = nil) -> Int {
        switch expression ?? self {
        case .number(let value):
            return value
        // a = leftExpression, b = rightExpression
        case .addition(let a, let b):
            return evaluate(a) + evaluate(b)
        case let .substraction(a, b):
            return evaluate(a) - evaluate(b)
        case let .multiplication(a, b):
            return evaluate(a) * evaluate(b)
        case let .division(a, b):
            return evaluate(a) / evaluate(b)
        case let .power(a, b):
            return Int(pow(Double(evaluate(a)), Double(evaluate(b))))
        }
    }
}

let sumAndDivExample: ArithmeticExpression = .addition(.number(5), .substraction(.number(-5), .number(3)))
sumAndDivExample.evaluate()

let multAndDivExample: ArithmeticExpression = .multiplication(.number(4), .division(.number(15), .number(5)))
multAndDivExample.evaluate()

let powerExample: ArithmeticExpression = .power(.number(2), .number(4))
powerExample.evaluate()
