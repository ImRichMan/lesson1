import UIKit
import Foundation
//1. Написать функцию, которая определяет, четное число или нет.
var numberArray = [12, 76, 54, 89, 100, 43, 25]
for i  in numberArray{
    if i % 2 == 0{
        print("\(i) четное число")
    }else {
        print("\(i) нечетное число")
    }
}
//2. Написать функцию, которая определяет, делится ли число без остатка на 3.

for i in numberArray{
    if i % 3 == 0{
        print("\(i) делится на 3 без остатка")
    }else{
        print("\(i) делится на 3 с остатком")
    }
}

//3.Создать возрастающий массив из 100 чисел.

var oneHundred: Array<Int> = []
for i in 1...100{
    oneHundred.append(i)
}
print(oneHundred)


//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3

var toDelete = oneHundred.filter {$0 % 2 != 0 && $0 % 3 == 0}
   print(toDelete)

//5. Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов.

func fibonacciArray(_ n: Int) -> [Double] {
    var fibonacci: [Double] = [1, 1]
    (2...n).forEach{ i in
        fibonacci.append(fibonacci[i - 1] + fibonacci[i - 2])
    }
    return fibonacci
}
print(fibonacciArray(100))


//6. Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу.

func simpleNumbers(arrayPassed: [Int]) -> [Int] {
    var simple: [Int] = []
    var newArr = arrayPassed
    while let newP = newArr.first {
        simple.append(newP)
        newArr = newArr.filter { $0 % newP != 0 }
    }
    return simple
}
print(simpleNumbers(arrayPassed: Array(2...100)))
