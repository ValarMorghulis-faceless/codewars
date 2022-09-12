func digitalRoot(of number: Int) -> Int {
  var num = number
  var arr1 = [Int]()
  while true {
    arr1.insert(num % 10, at: 0)
    num /= 10
    if num == 0 {
      break
    }
  }
  var num1 = 0
  for i in arr1 {
    num1 += i
  }
  if num1 < 10 {
    return num1
  }else {
      digitalRoot(of: num1)
  }

  return digitalRoot(of: num1)
  
}