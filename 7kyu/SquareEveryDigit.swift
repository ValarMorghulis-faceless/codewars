func squareDigits(_ num: Int) -> Int {
  var num1 = num
  var arr1 = [Int]()
  
  while true {
    arr1.insert(num1 % 10, at: 0)
    num1 /= 10
    if num1 == 0{
      break
    }
     
  }
  
  var arr2 = [Int]()
  for i in arr1 {
    arr2.append(i*i)
  }
  

  var myString = ""
  _ = arr2.map{ myString = myString + "\($0)"}
  let myInt = Int(myString)
  
  return myInt ?? 0
}