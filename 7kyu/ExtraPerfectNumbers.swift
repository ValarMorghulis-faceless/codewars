func extraPerfect(_ n: Int) -> [Int] {
  //Do Some Magic
  var arr1 = [Int]()
  var m = n
  if m % 2 == 0 {
      m -= 1
    }
  while true{
    
    arr1.insert(m, at: 0)
    m -= 2
    if m < 0{
      break
    }
  }
  return arr1
}