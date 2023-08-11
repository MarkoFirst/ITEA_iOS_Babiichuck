//: [Previous](@previous)

import Foundation

enum Gender {
    case man
    case woman
}

class Human {
    let gender: Gender = .woman
    var age: UInt = 0
    let name: String = ""
    private var surname: String = ""
    
    func birthday() {
        age += 1
    }
    
    open func meried(newSurname: String) {
        surname = newSurname
    }
}

class Student: Human {
    let zoomName = "Kate"
    var assessments = [91, 88]
    
    public func averageMark() -> Double {
        return Double(assessments.reduce(0) {$0 + $1}) / Double(assessments.count)
    }
    
    override func meried(newSurname: String) {
        if age > 18 {
            super.meried(newSurname: newSurname)
        }
    }
}


class StudentITEA: Student {
    let id = 12
}

class StudentONAPT: Student {
    let idd = 12
}

class StudentPol: Student {
    let id_ = 12
    
}

var student: Student = StudentITEA()

switch "Канатна 112" {
case "Канатна 112":
    student = StudentONAPT()
case "online":
    student = StudentITEA()
case "Проспект Шевченка 12":
    student = StudentPol()
default:
    break
}


student as StudentITEA


let iteaStudet = StudentITEA()
let onaptStudet = StudentONAPT()
let polStudet = StudentPol()

iteaStudet.averageMark()
onaptStudet.averageMark()
polStudet.averageMark()


struct HumanStruct {
    private let gender: Gender = .woman
    internal var age: UInt
    var name: String
}

var me = Human()

let kate = StudentITEA()

me.age = 26

kate.zoomName
kate.meried(newSurname: "")
kate.id

class Teacher: Human {
    var jobs: [String] = ["A-Soft", "Citrus", "ShtrafUA"]
    
    func startLesson() {
        print("zoom.start()")
    }
}
let teacher = Teacher()
let student = Student()


func isWoman(_ human: Human) -> Bool {
    return human.gender == .woman
}




        Human (name)
Friend -- Parent -- Relative


func sendMessage(_ h: Human) {
    print("шо ти голова, \(h.name)")
}

Electronic (plate, private RAM, CPU, func printAllInfo)
SmallGadjets (size < 100 mm)
Phone (func call, private imei, )

SmartPhone (private camera, func browser, phone, override printAllInfo() {
    super.printAllInfo()
    print(camera)
})
iPhone (safari)          Xaomi
iPhoneMini (size < 80)





UserWithIphone.printAllInfo()

buy(Phone)



let xaomi = Xaomi()

let iphone = iPhoneMini()

xaomi.printAllInfo()
iphone.printAllInfo()

func cleanPhone(_ phone: SmallGadjets) {
    
}

cleanPhone(xaomi)


Bussines
EatBussines
Farm {
    let pets: [Animal] = [Dog, Cock, Pig, Cow]
}

Electric (off(), electricMetric = 4)

TV
SmartTV (appOffTV())

let smg = SmgTV() electricMetric = 5
smg.appOffTV()

let lg = LG_TV()

smg.off()

let macbook electricMetric = 2


electricMetric(p: lg.electricMetric)

class Electric {
    var electricMetric = 2
    func on() {}
    
}

func electricMetric(p: Electric) -> Double {
    (p as? SmartTV ?? SmartTV()).appOffTV()
  
    if p is SmartTV {
        (p as! SmartTV).appOffTV()
    }
    
    
    p.off()
    
    
    
    return p.electricMetric
}
