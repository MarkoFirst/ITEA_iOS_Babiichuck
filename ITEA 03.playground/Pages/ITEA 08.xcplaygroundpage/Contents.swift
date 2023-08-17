import Foundation
import UIKit

// Enum

//enum Brand {
//    case zara
//    case h_m
//    case nike
//    case bershka
//}

enum Brand {
    case zara, h_m, nike, bershka
}

let myBrand = Brand.zara

let myBrand_: Brand = .nike

myBrand














enum MyIndex: Int {
    case first
    case second
    case third = 11
    case fourth
    case fifth
    case sixth
}

MyIndex(rawValue: 11)

MyIndex.second.rawValue
MyIndex.fifth.rawValue



enum MyStrings: String {
    case toyota
    case mazda = "ford"
    case vw
}



MyStrings.mazda.rawValue






indirect enum BrandFull {
    case zara(id: Int, str: String)
    case h_m(_ barcode: [Int])
    case nike(qr: String)
    case bershka(Double)
    case brand(BrandFull)
    
    var codeStr: String {
        switch self {
        case let .zara(id: id, str: str):
            return id.description + str
        case .h_m(let barcode):
            return barcode.map { $0.description} .joined()
        case .nike(qr: let qr):
            return qr
        case let .bershka(value):
            return value.description
        case .brand(let element):
            
            print("just check indirect \(element.codeStr)")
            return "default value"
        }
    }
    
    var id: Int {
        switch self {
        case let .zara(id: id, str: _):
            return id
        default:
            return 0
        }
    }
}

let brandId = BrandFull.zara(id: 2, str: "zara")
brandId.codeStr
brandId.id

let indirectTest = BrandFull.brand(brandId)
indirectTest.codeStr

// extension

enum Gender {
    case woman
    case man
}

class Human {
    let gender: Gender = .woman
    var age: UInt {
        return 8 * 1
    }
}

extension Human {
//    var job: String = "iOS developer"
    
    var job: String {
        return "iOS developer"
    }
    
    func goToWork() {}
}

let me = Human()
me.goToWork()







extension String {
    mutating func isEmail() -> Bool {
        self = self.filter { $0 != "/" }
        
        return self.contains("@")
    }
    
    func getOnlyNumbers() -> [Int] {
        return self.compactMap { Int($0.description) }
    }
    
    mutating func justNumbers() {
        self = self.getOnlyNumbers().map { $0.description }.joined()
    }
    
    var numbers: [Int] {
        return self.getOnlyNumbers()
    }
}

var mail = "textEmail@/sdjn"

if mail.isEmail() {
    mail
}

var str = "jsdf2342lmsdv23r"

str.getOnlyNumbers()
str


str.justNumbers()
str

"dk2hbjh5dbs".numbers


// Protocol

enum Pet {
    case cat, dog
}

protocol HavePet {
    var petType: Pet { get }
    func feed()
}

extension Human: HavePet {
    var petType: Pet {
        if age < 18 {
            return .dog
        }
        
        return .cat
    }

    func feed() {
//        petType = .dog
        print("give food for cat from Human")
    }
}

let meWithPet = Human()
meWithPet.feed()



extension HavePet {
    func feed() {
        switch petType {
        case .cat:
            print("give food for cat")
        case .dog:
            print("give food for dog")
        }
    }
}

enum Equipment {
    case ball
}
class Animal {}
class Dog: Animal {}

protocol Athlete {
    func someDoInGame()
}

func startGame(team: [Athlete], with: Equipment) {
    team.forEach { $0.someDoInGame() }
    
    guard let me = team.first(where: { $0 is Human }) as? Human else { return }
    
    me.age
}

extension Human: Athlete {
    func someDoInGame() {
        print("human do sport")
    }
}

extension Dog: Athlete {
    func someDoInGame() {
        print("Dog do sport")
    }
}

startGame(team: [Dog(), Human()], with: .ball)


protocol TransportProtocol {
    func gear()
    func refueling()
    
    var refuilTime: Int { get }
}


class Car {
    
}

class GasolineCar: Car {
    var fuelTank = 50
}

extension GasolineCar: TransportProtocol {
    var refuilTime: Int {
        return 1 //fuelTank.size
    }
    
    func gear() {
        print("ручна чи автомат")
    }
    
    func refueling() {}
}

class ShitCar: Car, TransportProtocol {
    var refuilTime: Int {
        return 60 * 20
    }
    
    func gear() {
        print("вперед / назад")
    }
    func refueling() {
        print("втавив розетку")
    }
}

class Bike {}

extension Bike: TransportProtocol {
    func gear() {
        print("сiквентал / варiатор")
    }
    
    func refueling() {
        print("встав пiстолет")
    }
    
    var refuilTime: Int {
        return 5
    }
}

func refuel(_ transport: TransportProtocol) {
    transport.refueling()
}

struct Some1: TransportProtocol {
    func gear() {
        <#code#>
    }
    
    func refueling() {
        <#code#>
    }
    
    var refuilTime: Int
}


class Style {
    parameters
    init
    if vc -> vc methods
    methods
}

extensions
