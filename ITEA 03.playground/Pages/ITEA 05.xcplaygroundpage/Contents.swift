

// Range (ClosedRange)

// reversed

let normalRange = 1...9
let reverseRange = normalRange.reversed()

normalRange     .map {$0}
reverseRange    .map {$0}




// contains

normalRange.contains(4)

normalRange.contains(where: { $0 % 3 == 0 })


normalRange.contains(where: { number in
    return number % 3 == 0
})


// overlaps

let range = 3.0 ... 9
 
range.overlaps(-4...2)
range.overlaps(9...19)





// Array

// get elements


var array: [Int] = [1, 22, 4, 5, 5, 5, 5, 7, 666]
                //  0  1  2  3  4  5  6
                //[(0, 1), (1, 22), ()]
array.first(where: { $0 > 5 })
    
array.last

// count & isEmpty

array.count - 1// lastIndex + 1

if !array.isEmpty && array.count > 6 {
    array[6]
}

// append / insert / remove

array[0] = 111
array[0]

array.append(888)
array.insert(999, at: 2)

array.remove(at: 2)




// cycles
// enumerated

for (index, item) in array.enumerated() {
    if index - 1 > 0 {
        print(item == array[index - 1])
    }
}


// forEach / map / filter

array.enumerated().forEach({ (index, item) in
    if index - 1 > 0 {
        print(item == array[index - 1])
    }
})

let arrayStr = ["a1", "2", "3"]

let arraInt: [Int] = arrayStr.map { return Int($0) }
    .compactMap { $0 }


var arraInt1: [Int] = []
arrayStr.forEach({ item in
    if let new = Int(item) {
        arraInt1.append(new)
    }
})


let arrayOH = array.filter({ item in
    
    return item > 100
}).map { $0.description }


// Set

let setInt: Set<Int> = [1,2,3,3,3,4]
let setInt1: Set<Int> = [1,4, 8,9]


setInt.intersection(setInt1)

setInt.symmetricDifference(setInt1)

setInt.subtracting(setInt1)

setInt.union(setInt1)



let arrayFromSet = setInt.map { $0 }

// Dictionary

var dic: [String: Any] = [
    "key1": "jkb",
    "key2": 1111,
    "key3": true
]

//dic["keyT"] = 5.8

var dicInt: [Int: String] = [:]

dicInt[6] = "65765"
dicInt[6]

dic.keys.forEach { key in
    print(key)
}


[
    "kate": "21:01",
    "daniilcuguevskij":"21:01"
]


//dic["key2"] = 2222
//
//
//dic["keyTest"] = 4444
//dic["keyTest"]
//
//dic["keyTest"] = "hjhkndsv"
//dic["keyTest"]
//
//
//dic.first(where: { key, item in
//    print(item)
//    return ((item as? Int) ?? 0) > 4
//})



"test"
["t", "e", "s", "t"]
