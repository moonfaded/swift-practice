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


/*
 Задание 2

 Корректно ли будет выполнен данный код? Если нет, то какие правки необходимо в него внести, чтобы исправить ошибки?
 */

enum Seasons{
    case winter, spring, summer, autumn
}
let whiteSeason = Seasons.winter
var greenSeason: Seasons = .spring
greenSeason = .summer
// var orangeSeason = .autumn
var orangeSeason: Seasons = .autumn
var bestSeason = whiteSeason
bestSeason = .summer


/*
 Задание 3

 Простейшая модель сущности “Шахматная фигура” может быть выполнена с помощью перечисления.
 1) Создайте перечисление Chessman, члены которого определяют возможные типы шахматных фигур (всего 6 типов, без учета цвета).
 2) Внутри перечисления Chessman создайте перечисление Color, определяющее возможные цвета шахматных фигур.
 3) Для каждого члена перечисления Chessman создайте связанный параметр типа Color, позволяющий указать цвет шахматной фигуры
 4) Создайте несколько экземпляров типа Chessman, каждый из которых описывает свою шахматную фигуру
 5) Напишите конструкции switch-case, способную обрабатывать параметр типа Chessman и выводить на консоль информацию о типе и цвете фигуры
 6) Создайте новую переменную и инициализируйте ей значение типа Color, вложенного в перечисление Chessman
 */

enum Chessman {
    case pawn(ChessColors)
    case bishop(ChessColors)
    case knight(ChessColors)
    case rook(ChessColors)
    case queen(ChessColors)
    case king(ChessColors)
    
    enum ChessColors {
        case black, white
    }
    
    func printProps() -> Void {
        switch self {
        case .pawn(let color): print("Proerties of piece: type = pawn, color = \(color)")
        case .bishop(let color): print("Proerties of piece: type = bishop, color = \(color)")
        case .knight(let color): print("Proerties of piece: type = knight, color = \(color)")
        case .rook(let color): print("Proerties of piece: type = rook, color = \(color)")
        case .queen(let color): print("Proerties of piece: type = queen, color = \(color)")
        case .king(let color): print("Proerties of piece: type = king, color = \(color)")
        }
    }
}
var blackQueen: Chessman = .queen(.black)
var whiteKing = Chessman.king(.white)
var whitePawn = Chessman.pawn(.white)

var colorFromEnum = Chessman.ChessColors.white


/*
 Задание 4

 1) Создайте перечисление Day, члены которого указывают на дни недели.
 В составе перечисления создайте вычисляемое свойство, которое возвращает наименование дня недели на русском языке (значение типа String), соответсвующее выбранному члену перечисления
 2) Проверьте работу перечисления с помощью следующих выражений

 let mon = Day.monday
 print(mon.label) // Понедельник
 print(Day.friday.label) // Пятница
 */

enum Day: String {
    case monday = "Понедельник"
    case tuesday = "Вторник"
    case wednesday = "Среда"
    case thusday = "Черверг"
    case friday = "Пятница"
    case saturday = "Суббота"
    case sunday = "Воскресенье"
    
    var label: String { return rawValue}
}

let mon = Day.monday
print(mon.label) // Понедельник
print(Day.friday.label) // Пятница




//                  Lesson 20. Structures

//          Homework

/*
 Задание 1

 Реализуйте структуру Point, описывающую точку на плоскости (2 оси)
 Структура должна обладать следующими характеристиками:
 – свойство, описывающее координаты очки на плоскости
 – метод, принимающую другую точку в качестве входного аргумента и возвращающий расстояние между текущей точкой и переданной
 Проверьте работоспособность вашей структуры
 Расстояние между точками с координатам (10,20) и (15,22) должно быть равно [Double] 5.385164807134504
 */

struct Point {
    var x = 0.0
    var y = 0.0
    func distanceTo(_ point: Point) -> Double {
        sqrt(pow(x - point.x, 2) + pow(y - point.y, 2))
    }
}

let point1 = Point(x: 10, y: 20)
let point2 = Point(x: 15, y: 22)
print(point1.distanceTo(point2))


/*
 
 */
