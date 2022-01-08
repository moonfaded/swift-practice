import UIKit

//                          Lesson 3. Tuple (Кортеж).

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




//                          Lesson 5. Range (Диапазон)

//              Homework

/*
 Задание 1

 Покажите два способа создания диапазона, который содержит все целые числа от 1 до 9
 */

var (range1, range2) = (1...10, 1..<11)


/*
 Задание 3

 Определите тип данных, которые будут иметь объявленные параметры
 */

/*
 var range3 = 1..<10         //Range <Int>
 var range4 = 1..            //Error
 var range5 = ..<5           //PartialRangeUpTo <Int>
 var range6 = -100...100     //ClosedRange <Int>
 */


/*
 Задание 6

 Создайте диапазон целых чисел от -100 до 100 и инициализируйте его константе range
 Создайте переменную item типа UInt со значением 21.
 Создайте переменную типа Bool и запишите в нее результат проверки наличия значения переменной item в диапазоне range. Каким образом произвести данную проверку?
 */

 let range7 = -100...100
 var item: UInt = 21
 var result: Bool = range7.contains(Int(item))


/*
 Задание 7

 Создайте диапазон, содержащий все заглавные латинские символы.
 Какими будут значения методов min() и max() для этого диапазона?
 Какими будут значения свойств lowerBound и upperBound для этого диапазона?
 */


 var allUpperCaseLatinChars: ClosedRange<Character> = "A"..."Z"
// allUpperCaseLatinChars.min() // error, works only for Int's ranges
// allUpperCaseLatinChars.max() // error, works only for Int's ranges
 allUpperCaseLatinChars.lowerBound //A
 allUpperCaseLatinChars.upperBound //Z
 

/*
 Задание 8

 Покажите два способа создания диапазона значений типа Float. В обоих способах должен использоваться оператор ...
 */

 var range8: ClosedRange<Float> = 1...2
 var range9 = Float(1)...2




//                          Lesson 6. Array (Массив)

//              Homework

/*
 Задание 1

 Какие из выражений не вызовут ошибок? Исправьте найденные ошибки.
 */

 var arr1 = [1,2,3,4,5,6] //var arr1 = [1,2,3,"4",5,6]
 var arr2 = ["a","Z"]
 var arr3 = [Character("a"), "b"]
 var arr4 = [Character("a"), "z"] // var arr4 = [Character("a"), "zz"]
 var arr5: [ClosedRange<Float>] = [1...3, 2.1...2.3]
 
/*
 Задание 2

 Покажите все способы создания массива, состоящего из целочисленных элементов от 0 до 10
 */

var arr6 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var arr7 = Array(0...10)
var arr8 = Array(arrayLiteral: 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10)


/*
 Задание 3

 Покажите все известные вам способы создания массива, состоящего из пяти одинаковых значений
 */

var arr9 = [1, 1, 1, 1, 1]
var arr11 = Array(arrayLiteral: 1, 1, 1, 1, 1)
var arr12 = Array(repeating: 1, count: 5)


/*
 Задание 4

 1)Создайте массив, состоящий из четырех целочисленных элементов

 2)Сделайте так, чтобы вместо второго и третьего элементов массива (с индексами 1 и 2) был элемент, содержащий сумму начального и конечного элементов данного массива. После этого в массиве должно остаться 3 элемента.

 3) Отсортируйте элементы по возрастанию
 */

var arr13 = [6, 7, 8, 9]
arr13[1...2] = [arr13[0] + arr13[3]]
arr13.sort()


/*
 Задание 5

 1) Создайте массив, состоящий из всех целых чисел от 1 до 100

 2) Создайте пустой массив типа Array<Int>

 3) Проинициализируйте пустому массиву элементы с 25го по 50ый
 */

var arr14 = Array(1...100)
var arr15: Array<Int>
arr15 = Array(arr14[24...49])


/*
 Задание 6

 1) Создайте массив arr из пяти элементов типа Character

 2) В массив arr вставьте вторым элементом (не вместо второго, а между первым и вторым) символ “z”

 3) Создайте переменную i типа UInt8 и проинициализируйте ей количество элементов массива arr.
 */

var arr16: [Character] = ["a", "b", "c", "d", "e"]
arr16.insert("z", at: 1)
var i = UInt8(arr16.count)


/*
 Задание 7

 Каким образом можно получить значение предпоследнего элемента массива независимо от количества элементов в нем.
 Может ли описанный вами синтаксис привести к ошибке? Если да, то в каком случае?
 */

var arr17: [Character] = ["a", "b", "c", "d", "e"]
var x = arr17[arr17.count - 2] // Index will be out of range for empty array


/*
 Задание 8

 Определи тип каждого из массивов
 */

 var arr18 = [1,2,3,4,100] // Array<Int>
type(of: arr18)
 var arr19 = [Character("2"), "c","5"] // Array<Character>
type(of: arr19)
 var arr20 = [[1...10],[2...8],[3...7]] // Array<Array<ClosedRange<Int>>>
type(of: arr20)
// var arr21 = [1...2, 3...4, 5..<6] // error: different types
// var arr22 = [1, arr22.0+1, arr22.1+1] // error: circular reference; can't use element being currently initializing


/*
 Задание 9

 Будет ли корректно выполнен следующий код? Как исправить код, если он работает некорректно?

 Что будет выведено на консоль?
 */

 var arr21 = [Array<Character>]()
 arr21.append(["a", "b", "c"])
 arr21.append(["d", "e", "f"])
 arr21.remove(at:1)
 var arr22 = arr21.remove(at: 0)
 print(arr22[0])


/*
 Задание 10

 Будет ли корректно выполнен следующий код? Как исправить код, если он работает некорректно?
 */

var firstArray = [1,2,3,4,5]
var secondArray: [UInt] = firstArray.dropLast().map(){UInt($0)}




//                          Lesson 7. Set (Множество)

//      Practice
var set1: Set = [1, 2, 3]
var set2: Set<Int> = [1, 2, 3]
var set3 = Set(arrayLiteral: 1, 2, 3, 4)
var set4 = Set<Int>(arrayLiteral: 1, 2, 3, 4)

set1.insert(4)
set1.insert(4)

set1.remove(4)
set1.removeAll()

var oddNumbers: Set = [1, 3, 5]
var evenNumbers: Set = [2, 4, 6]
var differentNumbers: Set = [1, 4, 5, 6]

oddNumbers.intersection(differentNumbers)
oddNumbers.symmetricDifference(differentNumbers)
oddNumbers.union(evenNumbers)
oddNumbers.subtract(differentNumbers)


//      Homework

/*
 Задание 1

 Какие из выражений не вызовут ошибок и вернут множество (т.е. функция type(of:) должна вернуть Set)
 */


var set5 = [1, 2, 3, 4, 5]     // false, Array
type(of: set5)
var set6: Set = [1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0]  // true
type(of: set6)
var set7: Set = ["a","c"]  //  true
type(of: set7)
var set8 = Set(arrayLiteral: -0, +0, 1, 2, 3)  //  true
type(of: set8)
var set9 = Set(arrayLiteral: 0, 1, 2, 3, 4)    //  true
type(of: set9)


/*
 Задание 2

 Что будет выведено на консоль в результате выполнения кода?
 */

/*
 var mySet:Set = []
 mySet.insert(13.4)
 print( type (of: mySet.count ) ) // error
 */
  
  
/*
 Задание 3

 Что будет выведено на консоль в результате выполнения кода?
 */

var mySet2: Set = [13.4, 15.1]
print( mySet2.contains( Double(13.4) ) )
 

/*
 Задание 4

 Какой тип будут иметь созданные множества и их элементы (что вернет функция type(of:) для созданных множеств)?
 */

var setA: Set = [1, 2, 3, 4, 5]    //  Set<Int>.Type
type(of: setA)
var setB = Set( arrayLiteral: 1, 2, 3, 4, 5 )  //  Set<Int>.Type
type(of: setB)


/*
 Задание 5

 Какие элементы будут содержаться в множестве resultSet в конце листинга?
 */

var setOne: Set = [0, 1, 2, 3]
var setTwo: Set = [0, 2, 4, 6]
var resultSet = setOne.union(setTwo)   //  [0, 1, 2, 3, 4, 6]
resultSet.remove(4)    //  [0, 1, 2, 3, 6]
resultSet


/*
 Задание 6

 1) Объявите множество taskSet1, состоящий из всех целочисленных элементов от 1 до 10
 2) Объявите множество taskSet2, состоящий из всех целочисленных элементов от 5 до 15
 3) Создайте множество taskSet3, состоящий из элементов, которые входят и в taskSet1, и в taskSet2
 4) Создайте множество taskSet4, состоящий из элементов, которые не пересекаются в taskSet1 и taskSet2
 5) Запишите в переменную count типа UInt8 количество элементов в массиве taskSet4. Какое значение примет эта переменная?
 */

var taskSet1 = Set<Int>(1...10)
var taskSet2 = Set<Int>(5...15)
var taskSet3 = taskSet1.union(taskSet2)
var taskSet4 = taskSet1.symmetricDifference(taskSet2)
var count = UInt8(taskSet4.count)   //  9




//                          Lesson 8. Dictionary (Словарь)

//      Homework

/*
 Задание 1

 В результате каких из выражений будет создан словарь? Какой тип данных будет у созданных параметров?
 */

var dict1: Dictionary = ["One":(100,101),"Two":(200,201)]  //  Dictionary<String, (Int, Int)>.Type
type(of: dict1)
// var dict2: Dictionary = [(1,2,3):1, (2,3,4):2] //  error, not Hashable
// var dict3: Dictionary<Int,Int> = [1:13.3, 2:14.1, 3: 16.9] //  type error
var dict4 = Dictionary(uniqueKeysWithValues: [(1,2), (3,4), (5,6)])    //  Dictionary<Int, Int>.Type
type(of: dict4)
var dict5 = ["Alex": 1989, "John": 2002, "Harold": 1951]   //  Dictionary<String, Int>.Type
type(of: dict5)
// var dict6: Dictionary = [1, 2, 3, 4]   //  error


/*
 Задание 2

 1) Какой тип будет иметь словарь, ключи элементов которого будут строковыми значениями (String), а значения элементов – символьными (Character)    //  Dictionary<String, Character>.Type
 2) Покажите все известные вам способы создания словаря такого типа. Экспериментируйте, вполне вероятно мы с вами можем ответить на данный вопрос разными способами.
 */

var dict7: Dictionary<String, Character> = ["letterA":"a", "letterB":"b"]
type(of: dict7)

var dict8: [String:Character] = ["letterA":"a", "letterB":"b"]
type(of: dict11)

var dict9 = Dictionary<String, Character>(dictionaryLiteral: ("letterA", "a"), ("letterB", "b"))
type(of: dict11)

var dict10 = Dictionary(uniqueKeysWithValues: [("letterA", "a"), ("letterB", "b")])
type(of: dict11)

var keysForZip = ["letterA", "letterB"]
var valuesForZip = [Character("a"), "b"]
var dict11 = Dictionary(uniqueKeysWithValues: zip(keysForZip, valuesForZip))
type(of: dict11)

var dict12 = ["letterA":Character("a"), "letterB":"b"]
type(of: dict12)


/*
 Задание 3

 Какое значение будет у переменной result?
 */

 var myArray1: Array<UInt> = [1,2,3,4,5]
 var myDict1 = [1:2, 3:4, 5:6]
 var result1 = myArray1.count + Int(myArray1[3]) + myDict1.count //  5 + 4 + 3 = 12


/*
 Задание 4

 1) Создайте словарь типа Dictionary<Int, String> и наполните его тремя элементами
 2) Запишите в множество все ключи словаря
 3) Запишите в массив все значения словаря
 4) Создайте множество, состоящее из всех значений коллекций из пунктов 2 и 3
 Будьте очень внимательны при решении заданий
 */

var dict13 = [1:"one", 2:"two", 3:"three"]

var set10 = Set(dict13.keys)
type(of: set10)
var arr23 = Array(dict13.values)
type(of: arr23)

//  set11 = error, unable to create sequance with different types


/*
 Задание 5

 1) Создайте словарь типа Dictionary<Int, Array<String>> и наполните его произвольными значениями
 2) Запишите в константу dictElCount количество элементов в словаре
 3) Создайте массив, состоящий из dictElCount одинаковых элементов, значений которых dictElCount. Какой тип данных будет у созданного массива?
 */

var dict14: Dictionary<Int, Array<String>> = [1:["a","b", "c"], 2:["d", "e", "f"]]
let dictElCount = dict14.count
let arrOfDictElCount = Array(repeating: dictElCount, count: dictElCount)    //  Array<Int>.Type
type(of: arrOfDictElCount)
