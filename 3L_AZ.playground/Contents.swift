import UIKit
import Foundation

//1. Описать несколько структур – любой легковой автомобиль SportCar и любой грузовик TrunkCar.

var car1 = someCar(brand: "BMW", model: " 5", color: "clear", release: 2020, trunkVolume: 540.0 , engineState: .заглушен, windowState: .открыты, trunkState: .пустой)
var car2 = someCar(brand: "Toyota", model: " Camry", color: "clear", release: 2020, trunkVolume: 445.0, engineState: .заглушен, windowState: .закрыты, trunkState: .полный)

var truck1 = someTruck(brand: "Volvo", model: " FH16", color: "clear", release: 2019, bodyVolume: 160000.0, engineState: .запущен, windowState: .открыты, trunkState: .полный)
var truck2 = someTruck(brand: "Volvo", model: " FMX", color: "clear", release: 2017, bodyVolume: 135000.0, engineState: .запущен, windowState: .закрыты, trunkState: .пустой)


enum engineState {
    case запущен, заглушен
}

enum windowState {
    case открыты, закрыты
}

enum trunkState {
    case полный, пустой
}

struct someCar {
    let brand : String
    let model : String
    var color : String
    mutating func changeColor(c:String) {
        switch c {
        case "white":
            self.color = "белый"
        case "black":
            self.color = "черный"
        case "red":
            self.color = "красный"
        case "blue":
            self.color = "синий"
        default:
            print("Ошибка.")
        }
    }
    let release : Int
    var trunkVolume : Double {
        willSet {
            if (trunkState == .пустой) && (trunkVolume > 0) && (trunkVolume != 0) && (newValue < trunkVolume) {
                let space = trunkVolume - newValue
                print ("\(brand)\(model) Место в багажнике: \(space)")
            } else { print("Ошибка или \(brand)\(model) багажник заполнен.")}
        }
    }
    var engineState : engineState {
        willSet {
            if newValue == .запущен {
                print ("\(brand)\(model) двигатель запущен")
            } else {print("\(brand)\(model) двигатель заглушен")}
        }
    }
    var windowState : windowState {
        willSet {
            if newValue == .открыты {
                print("\(brand)\(model) окна открыты")
            } else { print("\(brand)\(model) окна закрыты") }
        }
    }
    var trunkState : trunkState
    mutating func emptyTrunck() {
        self.trunkState = .пустой
        print ("\(brand)\(model) багажник пустой")
    }
}

struct someTruck {
    let brand : String
    let model : String
    var color : String
    mutating func changeColor(c:String) {
        switch c {
        case "white":
            self.color = "белый"
        case "black":
            self.color = "черный"
        case "red":
            self.color = "красный"
        case "blue":
            self.color = "синий"
        default:
            print("Ошибка.")
        }
    }
    let release : Int
    var bodyVolume : Double {
        willSet {
            if (trunkState == .пустой) && (bodyVolume > 0) && (bodyVolume != 0) && (newValue < bodyVolume) {
                let space = bodyVolume - newValue
                print ("\(brand)\(model) Место в багажнике: \(space)")
            } else { print("Ошибка или \(brand)\(model) багажник заполнен")}
        }
    }
    var engineState : engineState {
        willSet {
            if newValue == .запущен {
                print ("\(brand)\(model) двигатель запущен")
            } else {print("\(brand)\(model) двигатель заглушен")}
        }
    }
    var windowState : windowState {
        willSet {
            if newValue == .открыты {
                print("\(brand)\(model) окна открыты")
            } else { print("\(brand)\(model) окна закрыты") }
        }
    }
    var trunkState : trunkState
    mutating func emptyTrunck() {
        self.trunkState = .пустой
        print ("\(brand)\(model) Багажник пустой")
    }
}




car1.engineState = .запущен
car1.trunkVolume = 340.0
car1.changeColor(c : "red")
car2.trunkVolume = 890.0
car2.emptyTrunck()
car2.trunkVolume = 80.9
car2.windowState = .открыты
car2.changeColor(c : "black")

truck1.engineState = .заглушен
truck1.windowState = .закрыты
truck2.engineState = .заглушен
truck2.bodyVolume = 5678908


print ("Информация о первой машине: Марка и модель: \(car1.brand)\(car1.model), Дата выпуска: \(car1.release), цвет: \(String(describing: car1.color)), свободное место в багажнике: \(car1.trunkVolume), двигатель \(car1.engineState)")
