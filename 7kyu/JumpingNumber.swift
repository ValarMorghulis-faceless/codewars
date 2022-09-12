func jumpingNumber(_ number: Int) -> String {
  //Do Some Magic
  var str = "Jumping!!"
  if number < 10 {
    return "Jumping!!"
  }
    var num = number
    var num1 = 0
    var num2 = 0
    while true {
        num1 = num % 10
        num2 = (num / 10) % 10
        num /= 10
        if num == 0 {
            break
        }
        if abs(num1 - num2) != 1 {
            str = "Not!!"
        }else {
       
        }
        
        
    }
    return str
}