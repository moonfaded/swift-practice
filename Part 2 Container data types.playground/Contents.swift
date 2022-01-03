import UIKit

//  Some practice with tuple data type

var myFirstTuple = ("my", 1, "tuple")

var mySecondTuple: (String, Int, String)
mySecondTuple = ("my", 2, "tuple")

print("First tuple = \(myFirstTuple), second tuple = \(mySecondTuple)")

print("Second item in first tuple = \(myFirstTuple.1)")

let myThirdTuple: (whosThatTuple: String, numberOfTuple: Int, whatIsThis: String) = ("my", 3, "tuple")

let (ownerOfTuple,_,_) = myThirdTuple
print(ownerOfTuple)


//                   Homework

/*
 Задание 1

 Объявите константу и запишите в нее свое имя.
 Объявите переменную типа UInt8 и запишите в нее свой возраст.
 Объявите кортеж и явно определите его тип данных, как (name: String, age: Int).
 В первый элемент кортежа запишите значение константы с именем.
 Во второй элемент кортежа запишите значение из переменной с вашим возрастом.
 */

let myName = "Alexander"
var myAge: UInt8 = 69
var tuple: (name: String, age: Int)
tuple.0 = myName
tuple.age = Int(myAge)
print(tuple)


/*
 Задание 2

 Объявите кортеж, способный хранить три значения типа Int16.
 Одним выражением объявите две константы типа Int и проинициализуйте им произвольные значения.
 В первые два значения кортежа запишите значения из данных переменных, а в третий их сумму.
 */

var tuple1: (Int16, Int16, Int16)
// let firstLet = 13, secondLet = 14
let (firstLet, secondLet) = (13, 14)
tuple1 = (Int16(firstLet), Int16(secondLet), Int16(firstLet + secondLet))
print(tuple1)


/*
 Задание 5

 Вам даны две целочисленные переменные со значениями 12 и 21. Поменяйте их значения местами без использования буферной переменной и математических операций.
 */

var (first, second) = (12, 21)
print("first = \(first), second = \(second)")
(first, second) = (second, first)
print("first = \(first), second = \(second)")


/*
 Задание 6

 1) Создайте кортеж с двумя параметрами: ваш любимый фильм и ваше любимое число. Все элементы кортежа должны быть именованными.
 2) Одним выражением запишите каждый элемент кортежа в две константы. Проверьте значения параметров с помощью вывода в области результатов.
 3) Создайте псевдоним типа, используемого для первого кортежа, назовите его Man. Создайте второй кортеж типа Man, но описывающий другого человека (с другими значениями). Обратите внимание, что элементы кортежа так же должны иметь имена.
 4) Обменяйте значения в кортежах между собой.
 5) Создайте новый кортеж, элементами которого будут любимое число из первого кортежа, любимое число из второго кортежа и разница любимых чисел первого и второго кортежей.
 */

// 1
var firstTuple: (myFavoriteMovie: String, myFavoriteNumber: Int) = ("50 shades of grey", 420)
// 2
let (firstFavoriteMovie, firstFavoriteNumber) = firstTuple
print("Original tuple = \(firstTuple), created consts: myFavorite movie = \(firstFavoriteMovie), myFavoriteNumber = \(firstFavoriteNumber)")
// 3
typealias Man = (myFavoriteMovie: String, myFavoriteNumber: Int)
var secondTuple: Man = ("Most Wanted", 69)
// 4
(firstTuple, secondTuple) = (secondTuple, firstTuple)
// 5
var fourthTuple = (firstTuple.myFavoriteNumber, secondTuple.myFavoriteNumber, firstTuple.myFavoriteNumber - secondTuple.myFavoriteNumber)
