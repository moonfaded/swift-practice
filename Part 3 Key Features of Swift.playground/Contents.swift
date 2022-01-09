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
