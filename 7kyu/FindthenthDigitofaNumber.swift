func findDigit(_ num:Int, _ nth: Int) -> Int {
  // Go.
  var num1 = num
  if num1 < 0 {
    num1 = abs(num1)
  }
  
var numbr = 0
  
var i = 0
  if nth <= 0 {
    numbr = -1
  }else{
  while i < nth {
    numbr = num1 % 10
    num1 /= 10
    i += 1
    }
    
  }
  
  return numbr
  
}