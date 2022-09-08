func digPow(for number: Int, using power: Int) -> Int {
    var num = number
    var pw = power
    var arr1 = [Int]()
    var arr2 = [Int]()
    var num2: Double = 0
    while true {
      
        arr1.insert(num % 10, at: 0)
        num /= 10
        if num == 0{
            break
        }
        
    }
    for i in arr1 {
        num2 = pow(Double(i), Double(pw))
        arr2.append(Int(num2))
        pw += 1
    }
    var num3 = 0
    for i in arr2 {
        num3 += i
    }
   
    if num3 % number == 0 {
        return num3 / number
    }
    
    return -1
}