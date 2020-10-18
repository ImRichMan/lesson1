import UIKit


var car1 = SportCar(maxSpeed: 250, color: .black , brand: "BMW", numberOfDoors: 5, numberOfWheels: 4, engineState: .on, doorState: .open)

enum CarEngineState{
     case on, off
 }

  enum CarDoorState{
     case open, close
 }
 class Car {
     let color: UIColor
     let brand: String
     let numberOfDoors: Int
     let numberOfWheels: Int
     var engineState: CarEngineState
     var doorState: CarDoorState

      init(color: UIColor, brand: String, numberOfDoors: Int, numberOfWheels: Int, engineState: CarEngineState, doorState: CarDoorState) {
         self.color = color
         self.brand = brand
         self.numberOfDoors = numberOfDoors
         self.numberOfWheels = numberOfWheels
         self.engineState = engineState
         self.doorState = doorState
     }

      func openDoors() {
         doorState = .open
         print("Closed doors")
     }
     func closedDoors(){
         doorState = .close
     }
 }

  class SportCar: Car{
     var maxSpeed: Int
     init(maxSpeed: Int, color: UIColor, brand: String, numberOfDoors: Int, numberOfWheels: Int, engineState: CarEngineState, doorState: CarDoorState){
         self.maxSpeed = maxSpeed
         super.init(color: color, brand: brand, numberOfDoors: numberOfDoors, numberOfWheels: numberOfWheels, engineState: engineState, doorState: doorState)
     }

      override func openDoors() {
         super.openDoors()
         print("Закройте, пожалуйста, двери!")
     }
 }

  class Truck: Car{
     var fillTrunk: Bool
     var heigtCabin: Double

      init(fillTrunk: Bool, heigtCabin: Double, color: UIColor, brand: String, numberOfDoors: Int, numberOfWheels: Int, engineState: CarEngineState, doorState: CarDoorState){
         self.fillTrunk = fillTrunk
         self.heigtCabin = heigtCabin
         super.init(color: color, brand: brand, numberOfDoors: numberOfDoors, numberOfWheels: numberOfWheels, engineState: engineState, doorState: doorState)
     }
 }
 
 print(car1.brand)
 print(car1.doorState)
 print(car1.openDoors())
