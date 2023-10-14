//
//  ViewController.swift
//  Homework4(for5lesson)
//
//  Created by Юлия Клименкова on 12.10.23.
//

import UIKit

let oneString = "абв"
let twoString = "ввш"
let a = 10
let b = 2
let longNumber = 5536


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        

        
//       1. УНИВЕРСАЛЬНЫЕ ФУНКЦИИ СЛОЖЕНИЯ ВЫЧЕТАНИЯ УМНОЖЕНИЯ И ДЕЛЕНИЯ ДЛЯ int,double
        print ("\nУНИВЕРСАЛЬНЫЕ ФУНКЦИИ СЛОЖЕНИЯ ВЫЧЕТАНИЯ УМНОЖЕНИЯ И ДЕЛЕНИЯ ДЛЯ int,double\n")
        print (sum(a, to: b))
        print (sum(Double(a), to: Double(b)))
        print (subtraction(a, to: b))
        print (subtraction(Double(a), to: Double(b)))
        print (multiplication(a, to: b))
        print (multiplication(Double(a), to: Double(b)))
        print (division(a, to: b))
        print (subtraction(Double(a), to: Double(b)))
        
        
//       2.  СУММА ЦИФР 4-Х ЗНАЧНОГО ЧИСЛА
        print ("\nСУММА ЦИФР 4-Х ЗНАЧНОГО ЧИСЛА\n")

        print(sumNumbers(longNumber))
        
//       3. СРАВНЕНИЕ СТРОК
        print ("\nСРАВНЕНИЕ СТРОК\n")
                
        let resultComprasion = stringComparison(oneString, to: twoString)
        print(resultComprasion)
        
//      5. ВОЗВЕДЕНИЕ В СТЕПЕНЬ С ДЕФОЛТНЫМ ПАРАМЕТРОМ
        print ("\nВОЗВЕДЕНИЕ В СТЕПЕНЬ С ДЕФОЛТНЫМ ПАРАМЕТРОМ\n")
                
        print(pow(b))
        
//      4. ЦИКЛИЧЕСКИЙ ВЫЗОВ ФУНКЦИЙ
        print ("\nЦИКЛИЧЕСКИЙ ВЫЗОВ ФУНКЦИЙ\n")
        
        recurce(number: b)
        

        
        }
    }



// 1.универсальные функции сложения,вычетания,умножения и деления для int,double

func sum (_ first: Int, to second : Int ) -> Int {
    return first + second
}
func subtraction (_ first: Int, to second : Int ) -> Int {
    return first - second
}
func multiplication (_ first: Int, to second : Int ) -> Int {
    return first * second
}
func division (_ first: Int, to second : Int ) -> Int {
    return first / second
}
func sum (_ first: Double, to second : Double ) -> Double {
    return first + second
}
func subtraction (_ first: Double, to second : Double ) -> Double {
    return first - second
}
func multiplication (_ first: Double, to second : Double) -> Double{
    return first * second
}
func division (_ first: Double, to second : Double ) -> Double {
    return first / second
}

// 2. СУММА ЦИФР 4-Х ЗНАЧНОГО ЧИСЛА

func sumNumbers(_ first:Int) -> Int {
    let resultSum = String(first).compactMap{Int(String($0))}.reduce(0, +)
    return resultSum
}
// 3. функция сравнения строк

func stringComparison(_ firstString: String,to secondString: String) -> String {
    let ifString = "авб > ввш "
    let elseString = "авб < ввш"
    if firstString > secondString { print(ifString)
    } else {
        print (elseString)
    }
    return ""
}

// 4. ЦИКЛИЧЕСКИЙ ВЫЗОВ ФУНКЦИЙ
func recurce(number: Int) {
    print(number)
    if number == 0 {
        print(number) } else {
            recurce(number: number + 0)
        }
}

// 5. степень

func pow (_ first: Int, to second: Int = 5) -> Int {
    let result = Int( pow( Double (first), Double(second)))
    return result
}
