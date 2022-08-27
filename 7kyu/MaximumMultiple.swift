func maxMultiple(_ d: Int, _ b: Int) -> Int {
    // your code here
    var num1 = 0
  for i in d...b {
    if b % d == 0{
      num1 = b
    }else if i % d == 0{
        num1 = i
    }
  }
    return num1
}