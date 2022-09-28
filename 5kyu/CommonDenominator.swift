func convertFracts(_ l: [(Int, Int)]) -> [(Int, Int)] {
if l.count < 3 {
  return l
}
  func gcd(_ a: Int, _ b: Int) -> Int {
  let r = a % b
  if r != 0 {
    return gcd(b, r)
  } else {
    return b
  }
}
func lcm(_ m: Int, _ n: Int) -> Int {
  return m*n / gcd(m, n)
}
var i = 0
var num = 0
while true {
    num = (lcm(l[i].1, l[i + 1].1))
    num = lcm(num, l[i + 2].1)
    i += 1
    if i > l.count - 3 {
        break
    }
}

let arr2 = l.map { (num1,num2) -> (Int,Int) in
    var number = num1
    number *=  num / num2
    return (number,num)
}

return arr2

}