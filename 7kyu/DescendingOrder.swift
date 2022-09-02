func descendingOrder(of number: Int) -> Int {
var arr1 = [Int]()
  var num1 = number
  while true {
    arr1.append(num1 % 10)
    num1 /= 10
    if num1 == 0 {
      break
    }
    
  }
  
  arr1.sort(by: >)
  
  var myString = ""
_ = arr1.map{ myString = myString + "\($0)" }
let myInt = Int(myString)
  
  return myInt ?? 0
  
}