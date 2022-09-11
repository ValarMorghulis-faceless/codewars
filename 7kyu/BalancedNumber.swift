func balancedNumber(_ number: Int) -> String {
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
  
  if arr1.count == 1 {
    return "Balanced"
  }
  
  
    if arr1.count % 2 != 0 {
        arr1.remove(at: arr1.count / 2)
    }else if arr1.count % 2 == 0 {
      arr1.remove(at: arr1.count / 2)
      arr1.remove(at: arr1.count / 2)
    }
    var num2 = 0
    var sumfirs = 0
    var sumsec = 0
    for i in arr1 {

        if num2 < arr1.count / 2 {
            sumfirs += i
        }else {
            sumsec += i
        }
        num2 += 1
    }
    
    
    if sumfirs == sumsec {
        return "Balanced"
    }
    
    
    
    return "Not Balanced"
    
}