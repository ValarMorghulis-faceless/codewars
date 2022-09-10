func findNb(_ number: Int) -> Int {
  var num1 = 1
    var num2 = 0.0
  
  while true {
    
    num2 += pow(Double(num1), 3.0)
     num1 += 1
    if Int(num2) == number{
      return num1 - 1
      break
    }else if Int(num2) > number  {
      return -1
      break
    }
    
    
  }
  
  return 0
  
}