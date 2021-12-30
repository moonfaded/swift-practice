import UIKit

/*
 Оператор, который располагается между операндами, называется инфиксным»
 */

//однострочный комментарий

/*
 многострочный
 комментарий
 */

//: Markdown-комментарий, *курсив*, **жирный текст**

// you need ';' only if you have > 1 expressions in single line
var hello = "Hello"; let world = "World"

// anotherFunction(name: "Bazil") - функция с аргументом name

/*
 сигнатура goodFunction(_:Text:) - это функция с двумя аргументами,
 первый без имени, а второй - с именем Text
*/



                // Homework


/*
    #1
 Даны две переменные. Первая дробного типа хранит в себе расстояние в километрах. Вторая целочисленная хранит в себе время в секундах, за которое преодолели данное расстояние.
 Найдите скорость в метрах в минуту.
 */

var distanceKm = 10.0
var timeSec = 120

var speedMeterPerMinute = distanceKm*1000 / Double(timeSec)/60


/*
    #2
 Даны два целочисленных трёхзначных числа. Найти шестизначное, образованное слиянием данных чисел в одно.
 */

var firstNumber = 444
var secondNumber = 555

var concattedNumbers = Int("\(firstNumber)\(secondNumber)")


/*
    #3
 1. Объявите две целочисленные переменные типов Int8 и UInt8. В одну из них запишите максимальное значение, которое может принять параметр типа UInt8, а в другую - минимальное значение, которое может принять параметр типа Int8. Обратите внимание на то, какое значение в какую переменную может быть записано.
 2. Выведите полученные значения на консоль
 */

var int8: Int8 = Int8.min
var uint8: UInt8 = UInt8.max

print("int8 with int8.min = \(int8), uint8 with uint8.max = \(uint8)")


/*
    #4
 1. Объявите две целочисленные однотипные переменные, при этом тип данных первой должен быть задан неявно, а второй - явно. Обеим переменным должны быть присвоены значения.
 2. Поменяйте значения переменных местами.
 3. Выведите получившиеся значения на консоль. При этом в каждом варианте выводимых данных текстом напишите, какую переменную вы выводите.
 */

var implicit = 2
var explicit: Int = 1

var exchange = implicit
implicit = explicit
explicit = exchange

print("implicit = \(implicit), explicit = \(explicit)")


/*
    #5
 1. Объявите два параметра. Первый из них должен быть константой типа float с произвольным числовым значением, второй - переменной типа Double с произвольным значением.
 2. Установите новое произвольное значение всем параметрам, для которых эта операция возможна.
 */

let float: Float = Float.random(in: 1...3)
var double = Double.random(in: 1...3)

double = Double.random(in: 1...3)


/*
    #6
 1. Объявите три константы: одну типа Int со значением 18, вторую типа float со значением 16.4 и одну типа Double со значением 5.7
 2. Найдите сумму всех трёх констант и запишите её в переменную типа Float
 3. Найдите произведение всех трёх констант и запишите её в переменную типа Int. Помните, что вам необходимо получить результат с минимальной погрешностью (т.е. максимальной точностью).
 4. Найдите остаток от деления константы типа Float на константу типа Double и запишите её в переменную типа double.
 5. Выведите на консоль результаты всех трёх операций.
 */

let integerConst = 18
let floatConst: Float = 16.4
let doubleConst = 5.7

var sum = Float(integerConst) + floatConst + Float(doubleConst)
var mult = Int(Double(integerConst) * Double(floatConst) * doubleConst)
var remainder = Double(floatConst).truncatingRemainder(dividingBy: doubleConst)

print("sum = \(sum), mult = \(mult), remainder = \(remainder)")


/*
    #7
 1. Объявите переменные a и b целочисленного типа данных и проинициализируйте им значения 2 и 3.
 2. Вычислите значение уравнения (a+4b)(a-3b)+a^2 и выведите результат на консоль
 */

var a = 2
var b = 3

var result = (a+4*b)*(a-3*b)+a*a
print(result)


/*
    #8
 1. Объявите переменные c и d и присвойте им значения 1.75 и 3.25
 2. Вычислите значение уравнения 2(с+1)2+3(d+1) и выведите результат на консоль.
 3. Какой тип данных будет у результата математического выражения?
 */

var c = 1.75
var d = 3.25
var results = 2*(c+1)*2+3*(d+1)
print(type(of: results))


/*
    #9
 1. Объявите константу length и запишите в неё произвольное целочисленное значение.
 2. Вычислите площадь квадрата с длинной стороны, равной length.
 3. Вычислите длину окружности радиусом length.
 4. Получите произведение полученных значений.
 */

let length = 11

var squareArea = length*length
var circleLength = 2.0*Double.pi*Double(length)
var multiplicated = Double(squareArea)*circleLength


/*
    #10
 1. Объявите переменную типа String и запишите в неё произвольный строковый литерал.
 2. Объявите константу типа Character, содержащую произвольный символ латинского алфавита.
 3. Объявите две переменные типа int и запишите в них произвольные значения.
 4. Одним выражением объедините в строковый литерал переменную типа string, константу типа Character и сумму переменных типа Int, а результат запишите в новую константу.
 5. Выведите данную константу на консоль.
 */

var string = "proizvloniy strokoviy literal"
let character: Character = "*"
var one = 1, two = 2

let allTogether = "\(string)\(character)\(one+two)"
print(allTogether)


/*
    #11
 Выведите на консоль букву W, составленную из символов *, расположенных в три строки
 */

print("*   *   *")
print(" * * * *")
print("  *   *")


/*
    #12
 1. Объявите три переменные: в первую запишите номер дня в месяце, во вторую запишите название месяца, в третью запишите год. Тип данных переменных выберите самостоятельно.
 2. Выведите на консоль дату в формате "2021 январь 01", используйте данные, записанные в объявленные ранее переменные
 */

var day = 01, year = 2021
var january = "Январь"

print("\(year) \(january) \(day)")


/*
    #13
 1. Объявите две логические переменные. Значение первой должно быть равно True, второй - False.
 2. Получите результат логического И и логического ИЛИ, где в качестве операндов используются данные переменные.
 */

var yes = true, no = false
var and = yes && no
var or = yes || no


/*
    #15
 1. объявите строковую константу и запишите в неё ваше имя.
 2. Объявите переменную типа Float и запишите  неё ваш вес в килограммах
 3. Объявите переменную Int и запишите в неё ваш рост в сантиметрах.
 4. Вычислите ваш индекс массы тела и запишите его в переменную. Формула для расчёта ИМТ: ИМТ=вес[kg]/рост[в метрах в квадрате]
 5. Выведите на консоль текст, содержащий ваше имя и  индекс массы тела. При этом используйте значения из объявленных переменных.
 */

let name15 = "Boris"
var weightKg: Float = 69.0
var growthSm = 190

var growthM = Float(growthSm)/100

var index = weightKg / (growthM*growthM)
print("Index for \(name15) = \(index)")


/*
    #16
 Вычисли значение без использования IDE (attention на четвёртый)
 */

let aa: Int = 46
let bb: Int = 10
// 1
let answer1: Int = (aa * 100) + bb
// 2
let answer2: Int = (aa * 100) + (bb * 100)
// 3
let answer3: Int = (aa * 100) + (bb / 10)
// 4
let answer4: Int = (bb / 100) * 12
/*
 Все выражения, кроме четвертого, скорее всего не вызвали у вас проблем. В четвертом обратите внимание, что левая часть выражения (где используется b) равно 0, т.к. тип данных целочисленный, а при делении 10 на 100 получается 0,1, у которого просто отбрасывается дробная часть.
 */


/*
    #17
 В выражении ниже расставьте скобки, так, чтобы они соответствовали порядку вычисления и не изменяли итоговый результат.
 */

(5 * 3) - ((4 / 2) * 2)


/*
    #18
 Объявите две константы a и b типа Double и проинициализируйте им произвольные значения.
 Рассчитайте среднее значение a и b и сохранить результат в константе типа Float с именем average.
 */

let a1 = 12.2, b1 = 5.4

let middle = Float(a1 + b1) / 2
