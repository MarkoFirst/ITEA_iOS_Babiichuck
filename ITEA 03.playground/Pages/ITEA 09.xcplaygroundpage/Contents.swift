//: [Previous](@previous)
import UIKit
import Foundation

var cache = "cache"

protocol Test {
    var greeting: String { get set }
}

var team: [String] = []
var playersBiggesr2m: [String] {
    get {
        return team//.filter( $0.height >= 200 )
    }
    set {
        team.append(contentsOf: newValue)
    }
//    willSet {
//        newValue == greeting
//        print(newValue)
//        print(greeting)
//    }
//    didSet {
//        reloadView
//    }
}

playersBiggesr2m = []


func playersBiggesr2m(team: [Athlete]) -> [Athlete] {
    return team//.filter( $0.height >= 200 )
}

class Athlete {
    private var firstName: String
    private var lastName: String
    private var age: UInt
    static var country: String = "Ukraine"
//    private var experienceLevel: Experience {
//        didSet {
//            age += 1
//        }
//    }

    init(
        firstName: String,
        lastName: String,
        age: UInt//,
//        country: String
//        experienceLevel: Experience
    ) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
//        self.country = country
        
        Athlete.country
//        self.experienceLevel = experienceLevel
        
        
//        static func getGamesCount() {
//
//        }
    }
}
//greeting = "Hi, students"
//
//greeting
//
//
//greeting

let jordan = Athlete(
    firstName: "Mickle",
    lastName: "Jordan",
    age: 62
)

//jordan.country
//Athlete.winnVolume()

cache



UIApplication.openNotificationSettingsURLString



struct DesignSystem {
    static let red: UIColor = UIColor.red
}


typealias DS = DesignSystem

let ds1 = DS()
DS.red

var ds2 = DS()

DS.red

DS.red












class Human {
    static var planet: String {
        return "Earth"
    }
    
    var myPlanet: String {
        return Human.planet
    }
}

let vadim = Human()
let dima = Human()

vadim.myPlanet
dima.myPlanet

//Human.planet = "Mars"

vadim.myPlanet
dima.myPlanet




class Animal {
    var name: String
    private var feetCount: UInt
    static var voiceText = "muu"
    
    init(name: String, feetCount: UInt = 4) {
        self.name = name
        self.feetCount = feetCount
    }
    
    static func voice() {
        print(voiceText)
    }
    
    func myVoice() {
        print(Animal.voiceText)
    }
}


enum TypeSport {
    case football()
    case basketball
    
    var area: (Int, Int) {
        switch self {
        case .football:
            return (180, 90)
        case .basketball:
            return (44, 27)
        }
    }
}

[
    "Team" { [Athlete], name, dateCreate, couch, sport } ,
    "Athlete" { name, age, number, gender, country },
    "Sport", {
        type: TypeSport
    }
    
    "Event" {
        title, description, date, place, price, [tickets]//, sponsors
    },
        "SportEvent" {[teams], sport,}
    "Place" { address, size, peopleCount, [TypeSport], price }
    
    "Settings" { theme, language, push },
    "User" {
        favorites: [Event,Sport,Team,Athlete]
    },
    
    "DesignSystem"
]

var filterList: [Filter] = [.country, .price, .date]


Filter(title: "Краiна:", list: ["USA", "Ukraine", "France"], logic: ([Event]) -> [Event])
Filter(title: "Price:", list: ["USA", "Ukraine", "France"], logic: ([Event]) -> [Event])
Filter(title: "Time:", list: ["USA", "Ukraine", "France"], logic: ([Event]) -> [Event])


enum Filter {
    case country
    case price
    case date
    case time
    
    var title: String {
        switch self {
        case .country:
            return "Краiна"
        case .price:
            return "Цiна"
        case .date:
            return "Дата"
        case .time:
            return "Час"
        }
    }
}



func createEvent(teams: [Team], date, title, place, description) -> Event {
    var event = Event()
    
    return event
}
