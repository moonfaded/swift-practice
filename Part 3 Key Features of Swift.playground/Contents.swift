import UIKit

//                  Lesson 10. Control operators (Операторы контроля)

//      Homework


/*
 Задание 1

 Напишите код, который будет выводить на консоль персонализированное приветствие пользователю в зависимости от его имени.
 Пусть в константе name хранится имя пользователя. Используя операторы управления (условия if и ветвления switch) реализуйте различный вывод на консоль в зависимости от значения в константе name
 Покажите варианты решения с использованием switch и if. Определите вывод на консоль для трех произвольных имен, а так же в блоке “во всех остальных случаях” (default и else).
 */

let name = "Alex"

switch name {
case "Igor":
    print("Sup, \(name)")
case "Alex":
    print("Hey there, \(name)")
case "Kasey":
    print("Wus hatneen, \(name)")
default:
print("Good morning, \(name)")
}

if name == "Igor" {
    print("Sup, \(name)")
} else if name == "Alex" {
    print("Hey there, \(name)")
} else if name == "Kasey" {
    print("Wus hatneen, \(name)")
} else {
    print("Good morning, \(name)")
}


/*
 Задание 2

 У вас есть логическая переменная open, которая может принять одно из двух доступных значений (true или false) var open = true или var open = false

 Вам необходимо создать новую переменную типа String и инициализировать ей строковое значение:
 – если open равно true, то инициализировать "открыто"
 – если open равно false, то инициализировать "закрыто"
 */

var open = true
var string: String

if open {
    string = "открыто"
} else {
    string = "закрыто"
}

var message = open ? "открыто" : "закрыто"


/*
 Задание 3

 Вам даны три переменные var1, var2 и var3 целочисленного типа Int
 Составьте программу, в конце которой в константе result будет находиться наибольшее из трех целочисленных значений.
 */

var (a, b, c) = (22, 11, 14)
let result: Int
let result1: Int

result = a > b ? (a > c ? a : c) : (b > c ? b : c)

if a > b {
    result1 = a > c ? a : c
} else {
    result1 = b > c ? b : c
}

let result3 = [a, b, c].max()


/*
 Задание 4

 Вы имеете три переменные-кортежа, содержащие координаты точек
 Напишите программу, которая определяет, может ли существовать треугольник с заданными координатами вершин
 
 Треугольник существует только тогда, когда сумма длин любых двух его сторон больше длины третьей.
 */

var dots = ((1.0, 1.0), (1.0, 3.0), (3.0, 3.0))

var side1 = sqrt(pow(dots.1.0 - dots.0.0, 2) + pow(dots.1.1 - dots.0.1, 2))
var side2 = sqrt(pow(dots.2.0 - dots.1.0, 2) + pow(dots.2.1 - dots.1.1, 2))
var side3 = sqrt(pow(dots.2.0 - dots.0.0, 2) + pow(dots.2.1 - dots.0.1, 2))

var isTriangle = side1 < side2 + side3 && side2 < side1 + side3 && side3 < side1 + side2


/*
 Задание 5

 Переменная lang может принимать 2 значения: "ru", "en". Если она имеет значение "ru", то в переменную days запишите массив дней недели на русском языке, а если имеет значение "en" – то на английском
 Покажите решение задачи через конструкцию switch-case

 Задание 6

 Основано на предыдущем задании
 У вас появилась дополнительная переменная chars, которая может принять два значения "up" и "down"
 Доработайте конструкцию switch-case таким образом, чтобы в зависимости от значения chars массив заполнялся большими или маленькими символами
 */


var lang = "ru"
var chars = "up"
var days: Array<String>

switch lang {
case "ru" where chars == "up":
    days = ["ПН", "ВТ", "СР", "ЧТ", "ПТ", "СБ", "ВС"]
case "ru" where chars == "down":
    days = ["пн", "вт", "ср", "чт", "пт", "сб", "вс"]
case "en" where chars == "up":
    days = ["MON", "TUE", "WED", "THU", "FRI", "SAT", "SUN"]
case "en" where chars == "down":
    days = ["mon", "tue", "wed", "thu", "fri", "sat", "sun"]
default:
    print("you've missed something :(")
}


/*
 Задание 7

 1) Определите псевдоним Operation типу кортежа, содержащему три элемента со следующими именами: operandOne, operandTwo, operation.
 Первые два – это числа с плавающей точкой. Они будут содержать операнды для выполнения операции.
 Третий элемент – строковое значение типа Character. Оно будет содержать указатель на проводимую операцию. Всего может быть четыре вида операций: +, -, *, /.
 2) Создайте константу типа Operation и инициализируйте ей произвольное значение, к примеру (3.1, 33, "+")
 3) Используя конструкцию switch-case вычислите значение операции, указанной в элементе для операндов operandOne и operandTwo. Оператор switch должен корректно отрабатывать любую из четырех операций.
 4) Проверьте правильность работы конструкции по для следующих операций:

 (3.1, 33, "+")
 (24.9, 22.32, "*")
 (11.3, 5, "/")
 (5, 2.5, "-")
 */

typealias Operation = (operandOne:Double, operandTwo:Double, operation:Character)

let testTupleArray: Array<Operation> = [(3.1, 33, "+"), (24.9, 22.32, "*"), (11.3, 5, "/"), (5, 2.5, "-")]

for testTuple in testTupleArray {
    switch testTuple.operation {
    case "+":
        print(testTuple.operandOne + testTuple.operandTwo)
    case "-":
        print(testTuple.operandOne - testTuple.operandTwo)
    case "*":
        print(testTuple.operandOne * testTuple.operandTwo)
    case "/":
        print(testTuple.operandOne / testTuple.operandTwo)
    default: print("Operation \(testTuple.operation) isn't supported")
    }
}





//                  Lesson 11. Optionals

//              Practice

var tuple1: (Int, Int)
type(of: tuple1)
var tuple: (Int, Int)?
type(of: tuple)


//              Homework

/*
 Задание 1

 Какое значение у каждой из приведенных переменных?
 */

 var easy: String?  //  nil
 var medium: String!    //  nil
 var hard: String       // error, not declared


/*
 Задание 2

 В чем отличие переменных easy и medium из предыдущего задания?
 medium will be unwrapped automatically when called and cause error if nil
 */


/*
 Задание 3

 Будет ли корректно выполнен следующий программный код? Если в нем присутствуют ошибки, то по-возможности исправьте их.
 */

easy = "1"
medium = "contra"
hard = "play game"
easy = medium
hard = medium
// easy = hard!     -> attempts to inwrap unoptional, reduntant
easy = hard
var gameTuple = (easy, Optional(hard))
// var gameText: String = gameTuple.0   -> gameTuple.0 returns Optional<String>.Type, not a String
var gameText = gameTuple.0!


/*
 Задание 4

 Покажите не менее трех способов (с помощью разных синтаксических конструкций) создания переменной типа String?
 */

var str1: String = "str1"
var str2 = "str2"
var str3: String? = String("str3")


/*
 Задание 5

 1) Создайте псевдоним типа String с именем Text
 2) Объявите три константы типа Text. Значения дух констант должны состоять только из цифр, а третьей – из букв и цифр
 3) С помощью оператора условия определите те константы, которые состоят только из цифр и выведите из на консоль
 */

typealias Text = String

let text1: Text = "123"
let text2: Text = "456"
let text3: Text = "abc1"

var arr = [text1, text2, text3]
var onlyNumbers: [String] = []

for const in arr where Int(const) != nil {
    onlyNumbers.append(const)
}
onlyNumbers


/*
 Задание 6

 В задании используются результаты предыдущего задания
 1) Создайте псевдоним типа (numberOne: Text?, numberTwo: Text?) с именем TupleType.
 2) Создайте три переменные типа TupleType, содержащие следующие значения: ("190", "67"), ("100", nil), ("-65", "70").
 3) С помощью конструкции switch-case определите, какие из кортежей не содержат nil в своем составе и выведите значения их элементов на консоль
 */

typealias TupleType = (numberOne: Text?, numberTwo: Text?)

var first: TupleType = ("190", "67")
var second: TupleType = ("100", nil)
var third: TupleType = ("-65", "70")

var arr1 = [first, second, third]

for tuple in arr1 {
    switch tuple {
    case (nil, nil), (nil,_), (_,nil):
        break
    default:
        print(tuple)
    }
}


/*
 Задание 7

 Представьте, что вы являетесь преподавателем курсов по шахматам. Ваши занятия посещают ученики и в конце каждого занятия получаю оценку.
 1) Создайте словарь, который будет содержать информацию о ваших студентах и об их успехах.

 Тип данных словаря – [String: [String: UInt]]
 Индекс – это фамилия ученика.
 Значение – еще один словарь, содержащий информацию о дате занятия и полученной оценке.
 В вашем электронном журнале должна находиться информация о трех учениках, по две оценки для каждого. Фамилии и даты придумайте самостоятельно.
 2) Подсчитайте средний балл каждого студента, средний балл группы, и выведите информацию на консоль.
 */

var students2: [String: [String : UInt]] = [:]
students2["Петров"] = ["01.01" : 4, "02.01" : 6]
students2["Иванов"] = ["03.01" : 9, "04.01" : 8]
students2["Сидоров"] = ["05.01" : 7, "06.01" : 9]

var avgGroupGrade: Float = 0
var groupMarksCount: Float = 0

for student in students2 {
    var avgStudentGrade: Float = 0
    for mark in student.value.values {
        avgGroupGrade += Float(mark);
        avgStudentGrade += Float(mark);
        groupMarksCount += 1;
    }
    print("Avg mark for student \(student.key) = \(avgStudentGrade / Float(student.value.values.count))")
}
print("Avg mark for group = \(avgGroupGrade / groupMarksCount)")


/*
 Задание 8

 Основано на предыдущем задании
 Перед вам стоит задача внести в уже существующий словарь оценку за еще одно занятие для студента. Покажите, каким образом это можно сделать.
 */

students2["Петров"]?["10.10"] = 6
students2["Петров"]!["11.10"] = 7

if var rofl = students2["Петров"] {
    rofl["11.11"] = 2
    students2["Петров"] = rofl
}

students2["Петров"] = ["10.10": 1, "11.11": 2, "01.01": 4, "02.01": 6, "11.10": 8, "2222": 10]

print(students2["Петров"]!)



/*
 Задание 9

 1) Создайте псевдоним Coordinates для типа кортежа (alpha: Character?, num: Int?). Данный тип будет описывать координаты шахматной фигуры на игровом поле. Если вместо элементов кортежа стоит nil, значит фигура не находится на игровом поле.
 2) Создайте псевдоним Chessman для типа словаря [String:Coordinates]. Данный тип описывает шахматную фигуру на игровом поле. В ключе словаря должно хранится имя фигуры, например "White King", а в значении – кортеж, указывающий на координаты фигуры на игровом поле.
 3) Создайте переменный словарь figures типа Chessman и добавьте в него три произвольные фигуры, одна из которых не должна иметь координат.
 4) Создайте цикл, которая обходит всех элементы словаря (все фигуры), и проверяет, убита ли очередная фигура (элемент словаря figures), далее выводит на консоль информацию либо о координатах фигуры, либо о ее отсутствии на игровом поле.
 */


typealias Coordinates = (alpha: Character?, num: Int?)
typealias Chessman = [String: Coordinates]
var figures: Chessman = [:]
figures["White King"] = ("A", 5)
figures["Black King"] = ("B", 4)
figures["Black Queen"] = (nil, nil)

for figure in figures {
    if figure.value.num != nil || figure.value.alpha != nil {
        print("Figure \(figure.key) is on board! Coordinates: \(figure.value)")
    } else {
        print("Figure \(figure.key) is upsent on board, containing wrong coordinates (\(figure.value)")
    }
}
