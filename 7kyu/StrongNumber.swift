func strongNumber(_ number: Int) -> String {
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
    var num2 = 0
    for i in arr1 {
        var b = i
        for _ in 0..<b {
            num1 *= b
            b -= 1
            
        }
       num2 += num1
        num1 = 1
        
    }
    
    if num2 == number {
        return "STRONG!!!!"
    }
    
    return "Not Strong !!"
    
}