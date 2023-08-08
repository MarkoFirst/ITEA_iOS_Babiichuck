//: [Previous](@previous)

import Foundation






let numbers = [1,2,3,5]

numbers.reduce( 0,  { def, item in
    def + item
})

var sum = 0

for item in numbers {
    sum += item
}


func symbolCount1(of str: String) -> [Character: Int] {
    return str.reduce(into: [:]) { dictionary, char in
        dictionary[char, default: 0] += 1
    }
}
symbolCount1(of: "symbolCount - приймає строку, рахує скільки яких символів у ній є, повертає результат (тип результату на Ваш розсуд, але я захочу виконати на ньому один із циклів)")

let sum1 = [400, 300, 450].reduce(-100, { $0 + $1 })

sum1 / [100, 300, 450].count


" р".reduce("printDuRplArcatesf ", { def, char in
    return def.filter({ $0.lowercased() != char.lowercased() })
})


var arrToSort = [2,1,3,55,6,199,43,535]

let didSort = arrToSort.sorted()

arrToSort.sort(by: { el0, el1 in
    return el0 > el1
})
arrToSort.sort(by: { $0 > $1 })

didSort

arrToSort

var newArr: [Int] = []

func sort1(arr: [Int], completion: (Int, Int) -> Bool) {
    for item in arr {
        if let index = newArr.firstIndex(where: { completion(item, $0) }) {
            
            newArr.insert(item, at: index)
        } else {
            newArr.append(item)
        }
    }
}

sort1(arr: arrToSort) { $0 > $1 }

newArr


let str = "Hello, my name Vadim"
str.components(separatedBy: "o,")

let pib = "Бабийчук Вадим Дмитриевич".components(separatedBy: " ")
pib.first
pib[1]
pib.last

let phone = "+38 (011) 111 11 11".components(separatedBy: "8 (")
    .last?
    .filter { item in
        let intValue = Int(item.description)
        
        return (intValue ?? 0) > 0
    }

["5","45", "76", "sdjknjkv"].joined(separator: "_")







func calculate(_ str: String) -> Double {
    var result = 0.0
    
    let elements = str.components(separatedBy: " ")
    
    let numbers = elements.compactMap { Double($0) }
    let symbols = elements.filter { Double($0) == nil }
    
    numbers.enumerated().forEach { index, number in
        if index == 0 {
            result = number
            return
        }
        
        switch symbols[index - 1] {
        case "-":
            result -= number
        case "+":
            result += number
        case "*":
            result *= number
        case "/":
            result /= number
        default:
            break
        }
    }

    
    return result
}


calculate("55 + 23 * 14")

