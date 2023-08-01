

//iAmOlder - приймає 2 числа, перевіряє хто старший та повертає bool

func iAmOlder(myAge: UInt, vs otherAge: UInt) -> Bool {
    return myAge > otherAge
}

iAmOlder(myAge: 27, vs: 40)


//yearOfBirth - приймає 2 числа (ваш вік і поточний рік), обчислює рік народження та виводить у консоль

func yearOfBirth(myAge: UInt, from currentYear: Int = 2023) {
    print(currentYear - Int(myAge))
}

yearOfBirth(myAge: 28, from: 2021)


//onlyEvenNumbers - приймає range чисел та виводить у консоль тільки парні числа

func onlyEvenNumbers(fromRange range: Range<Int>) {
    for item in range where item % 2 == 0 {
        print(item)
    }
}
onlyEvenNumbers(fromRange: 0..<9)

//getSum - приймає 4 числа, з яких перші 2 додає, після чого множить на третє і знаходить залишок від поділу з четвертого числа - виводить у консоль та повертає

func getSum(_ sum1: Int, _ sum2: Int, _ multiplier: Int, _ remainder: Int) -> Int {
    let sum = (sum1 + sum2) * multiplier % remainder
    print(sum)
    return sum
}

getSum(2, 2, 2, 3)

