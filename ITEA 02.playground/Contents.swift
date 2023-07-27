func optionalTest() {
    let number: Int? = nil
//    number = 6

    print("Users def:  \(number ?? 0)")
    
    if number != nil {
        let str = "Users: \(number!)"
    }
    
    if let newValue = number, newValue > 5 {
        print(newValue.description)
    }
    
    guard let gNumber = number, gNumber < 10 else { return }
    
    let str = "Users: \(gNumber)"
    print(str)
}
    
optionalTest()
