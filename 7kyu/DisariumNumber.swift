func disariumNumber(_ number: Int) -> String {
  //Do Some Magic
    var num = number
    var arr1 = [Int]()
    
    while true {
        arr1.insert(num % 10, at: 0)
        num /= 10
        if num == 0 {
            break
        }
    }
    
    
    var num1 = 1
    var num2 = 0.0
    for i in arr1 {
        num2 += pow(Double(i),Double(num1))
        num1 += 1
    }
    if Int(num2) == number {
        return "Disarium !!"
    }
    
    return "Not !!"
    
    
}