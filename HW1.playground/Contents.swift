import UIKit
import Foundation

//1.Решить квадратное уравнение
var a = 5.0
var b = 10.0
var c = 2.0
var x1 = 0.0
var x2 = 0.0

var D = pow(b,2)-4*a*c

if (D<0){
    print ("Корней нет.")
}
if (D==0){
    x1 = (-b+sqrt(D))/(2*a)
}
if (D>0){
    x1 = (-b+sqrt(D))/(2*a)
    x2 = (-b-sqrt(D))/(2*a)
}

//2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника

var q = 6.0
var w = 8.0
var e = 10.0
var p:Double
p = q + w + e
e = sqrt(pow(q,2) + pow(w,2))
print("Периметр треугольника равен \(p)")
print("Гипотенуза треугольника равна \(e)")

//3. Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.
var deposit:Float = 25000
var percent:Float = 15
percent = percent / 100
var result1 = deposit + (deposit * percent)
var result2 = result1 + (result1 * percent)
var result3 = result2 + (result2 * percent)
var result4 = result3 + (result3 * percent)
var result5 = result4 + (result4 * percent)
var count = 1
var Alltime = [result1, result2,result3, result4, result5]
for i in Alltime{
    print("Через \(count) год/лет сумма вклада будет равна \(i)")
    count += 1
}

