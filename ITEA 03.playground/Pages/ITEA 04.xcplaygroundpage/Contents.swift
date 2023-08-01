import Foundation
import UIKit

//  value        VS       reference

//  struct                class
//  enum                  func
//                        closure
//  Int
//  Double
//  String
//
//  Tuple
//
//  Set
//  Array
//  Dictionary

struct Test {
    var name = ""
}

class TestRef {
    var name = ""
    var age = 0
}

let s = TestRef()
s.name = "first"

var test = s // 0x11111
test.name = "test"

test = TestRef()


print(test.age)



struct User {
    var name: String?
    var age: Int?
    var email: String?
    var instagram: String?
    var google: String?
}

func login(name: String, email: String) {
    var user = User()
    user.name = name
    user.email = email
    
    setDefaultParams(user: &user)
}

func login(instagram: String) {
    var user = User()
    user.instagram = instagram
    
    setDefaultParams(user: &user)
}


func setDefaultParams(user: inout User) {
    if user.name == nil {
        user.name = "Def"
    }
    
    if user.email == nil {
        user.email = "Def"
    }
    
    if user.age == nil {
        user.age = 18
    }
    
    if user.instagram == nil {
        user.instagram = "linkto inst"
    }
    
    if user.google == nil {
        user.google = "linkto google"
    }
}

login(name: "Vadim", email: "test@gmail.com")











//

func addAge(link: TestRef) {
    link.age += 1
}

addAge(link: test)


print(test.age)

print(s.name)
print(test.name)


print("\n __________________________ \n")









// inout

func plusOne(_ number: inout Int) {
    number += 1
}

var testNumber = 10

plusOne(&testNumber)

print("inout: \(testNumber)")








print("\n __________________________ \n")








// вкладенiсть

func plusOne1(_ number: inout Int) {
    func isTen(_ n: Int) -> Bool {
        return n == 11
    }
    
    print("isTen: \(isTen(number))")
    print("isTen: \(isTen(number))")
    print("isTen: \(isTen(number))")
    print("isTen: \(isTen(number))")
    
    number += 1
}

var testNumber1 = 10

plusOne1(&testNumber1)








print("\n __________________________ \n")





// рекурсiя


func fibbonachi(_ n: Int) -> Int {
    if n == 0 || n == 1 {
        return n
    }

    if n > 1000 { return n }
    
    return fibbonachi(n-1) + fibbonachi(n-2)
}

print("fibbonachi: \(fibbonachi(5))")







print("\n __________________________ \n")






// перегрузка функцiй

func sum(_ x: Int, _ y : Int){
    print(x+y)
}

func sum(_ x: Double, _ y: Double){
    print(x+y)
}

func sum(_ x: Int, _ y: Double){
    sum(x, Int(y))
}
 
func sum(_ x: Int, _ y: Int, _ z: Int ){
    print(x + y + z)
}

let f: Int = 1
let sec: Double = 5

sum(f, sec)








print("\n __________________________ \n")

func printMy() -> Bool {
    print("test")
    return true
}

//func printYour(f: () -> Void) {
//    f()
//    print("test2")
//}


//printYour(f: myFunc)


func printYour() -> Bool {
    print("test2")
    return false
}

var currentFunc: () -> Bool = printMy


print(currentFunc())


currentFunc = printYour


print(currentFunc())
// замикання


func closure(_ text: String) {
    print(text)
}

let closure = { (text: String) in
    print(text)
}

closure("")






func doSome(number: Int, completion: () -> Void) {
    if number == 10 {
        completion()
    }
}

doSome(number: 10, completion: {
    print("is ten")
    print("is ten")
    print("is ten")
    print("is ten")
})

doSome(number: 9) {
    print("is ten")
}

func testMyClosure(some: (Int, String, Int) -> Void) {
    some(1, "test str", 6)
}



let testVariable: (Int, String, Int) -> Void = { f, s, t in
    print("f: \(f)")
    print("s: \(s)")
    print("t: \(t)")
}



testMyClosure(some: testVariable)

testMyClosure() { _, s, t in
//    print("f: \(f)")
    print("s: \(s)")
    print("t: \(t)")
}


[0,1,2,3,4].forEach { print($0) }


func apiGet(params: [String: Int], completion: (User?) -> ()) {
    
}


// vcMain
apiGet(params: ["id": 4]) { value in
    guard let name = value?.name else { return }
    
    print(name)
}


// vcProfile
apiGet(params: ["id": 4]) { value in
    print(value)
}

// vcDeleteProfile
apiGet(params: ["id": 4]) { value in
    print(value?.email)
}


func forMy(array: [Int]) {
    for item in array {
        print(item)
    }
}








func doSome1(number: Int, completion: () -> Void, completion1: () -> Void) {
    if number == 10 {
        completion()
    }
}

doSome1(number: 9) { print("is ten") } completion1: { print("ok") }
