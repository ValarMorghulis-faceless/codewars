func digits(num n: UInt64) -> Int {
  var m = n
  var num1 = 0
  
  while true {
   m = m / 10
    num1 += 1
    if m == 0 {
      break
    }
  
  }
  
  
  
  
  
  return num1
}