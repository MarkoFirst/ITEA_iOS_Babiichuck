
import Foundation


// onlyThree - приймає рейндж, пробігається по ньому і повертає масив тільки з кратними числами 3

func onlyThree(in range: Range<Int>) -> [Int] {
    return range.filter { $0 % 3 == 0 }
}
onlyThree(in: -40..<9)


// printDuplicates - приймає два масиви, виводить у консоль лише числа які є у першому, та другому

func printDuplicates(of arr1: [Int], and arr2: [Int]) {
    print(arr1.filter { arr2.contains($0) })
}
printDuplicates(of: [11, 23, 113, 1, 2, 3], and: [23, 1, 2, 200])


func printDuplicates(of arr1: Set<Int>, and arr2: Set<Int>) {
    print(arr1.intersection(arr2))
}
printDuplicates(of: [11, 23, 113, 1, 2, 3], and: [23, 1, 2, 200])




// symbolCount - приймає строку, рахує скільки яких символів у ній є, повертає результат (тип результату на Ваш розсуд, але я захочу виконати на ньому один із циклів)

func symbolCount(of str: String) -> [Character: Int] {
    var dictionary: [Character: Int] = [:]

    str.forEach { char in
        dictionary[char] = (dictionary[char] ?? 0) + 1
    }

    return dictionary
}
symbolCount(of: "symbolCount - приймає строку, рахує скільки яких символів у ній є, повертає результат (тип результату на Ваш розсуд, але я захочу виконати на ньому один із циклів)")


func symbolCount1(of str: String) -> [Character: Int] {
    return str.reduce(into: [:]) { dictionary, char in
        dictionary[char, default: 0] += 1
    }
}
symbolCount1(of: "symbolCount - приймає строку, рахує скільки яких символів у ній є, повертає результат (тип результату на Ваш розсуд, але я захочу виконати на ньому один із циклів)")



// sameCharacters - приймає дві строки та completion (кложуру), після обробки строк, кложура приймає два набори символів і виводить у консоль тільки ті, що повторюються в обох рядках.

func sameCharacters(of str1: String, and str2: String, completion: (Set<Character>, Set<Character>) -> Void) {

    completion(
        Set(symbolCount(of: str1).map { return $0.key }),
        Set(symbolCount(of: str2).map { return $0.key })
    )
}

func sameCharacters(
    of str1: String,
    and str2: String,
    completion: ([Character], [Character]) -> Void
) {
    completion(
        symbolCount(of: str1).map { return $0.key },
        symbolCount(of: str2).map { return $0.key }
    )
}

sameCharacters(of: "приймає приймає приймає", and: "після") { set1, set2 in
    print(set1.intersection(set2))
}

sameCharacters(
    of: "приймає",
    and: "після",
    completion: { set1, set2 in
        print(set1.intersection(set2))
    }
)

sameCharacters(of: "приймає дві строки", and: "після обробки строк,") { arr1, arr2 in
    print(arr1.filter { arr2.contains($0) })
}


