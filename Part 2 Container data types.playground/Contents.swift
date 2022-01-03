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
