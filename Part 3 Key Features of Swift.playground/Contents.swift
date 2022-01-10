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
