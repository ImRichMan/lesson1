import UIKit


enum Action{
    case sportCarAction
    case trunkCarAction
}
enum EngineState{
    case isOff, isOn
}
protocol Vehicle : AnyObject {
    
    var hp: Int { get }
    var engineState: EngineState { get set }
    func handle(action: Action)
}
extension Vehicle {
    
    func handleEngine(state: EngineState) {
        self.engineState = state
    }
    
}
class SportCar : Vehicle {
    var engineState : EngineState = .isOff
    var hp: Int
    init(hp : Int) {
        self.hp = hp
    }
    func handle(action: Action) {
        switch action {
        case .sportCarAction:
            print("Победа")
        default:
            break        }
    }
    
    
}
class TrunkCar: Vehicle {
    var engineState : EngineState = .isOff
    var hp: Int
    init(hp : Int) {
        self.hp = hp
    }

    func handle(action: Action) {
        switch action {
        case .trunkCarAction:
            print("Победа")
        default:
            break
            
        }
    }
    
    
}
let car2 = TrunkCar(hp: 200)
let car1 = SportCar(hp: 100)
car1.handleEngine(state: .isOn)
car2.handleEngine(state: .isOff)




extension SportCar : CustomStringConvertible {
    var description: String {
        return """
            состояние двигателя \(engineState), мощность \(hp)
            """
    }
    
    
}
extension TrunkCar : CustomStringConvertible {
    var description: String {
        return """
            состояние двигателя \(engineState), мощность \(hp)
            """
    }
    
    
}

car1.description
car2.description
