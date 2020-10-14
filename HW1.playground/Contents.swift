import UIKit
import Foundation
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



