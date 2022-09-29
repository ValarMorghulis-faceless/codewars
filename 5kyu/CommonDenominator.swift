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
    var rez1 = l.map {$0.0}.reduce(1){lcm($0, $1)}
    let rez2 = l.map {$0.1}.reduce(1){lcm($0, $1)}
    rez1 = lcm(rez1, rez2)
    print(rez1)
    
let arr2 = l.map { (num1,num2) -> (Int,Int) in
    var number: Double = Double(num1)
    number *=  Double(rez1) / Double(num2)
    return (Int(number),rez1)
}
   
    var result = arr2.map { $0.0 }.reduce(0) {gcd($0, $1)}
     result = gcd(result, arr2[0].1)
  

    let arr3 = arr2.map { (num1,num2) -> (Int,Int) in
        var number = Double(num1)
        var number2 = Double(num2)
        number /= Double(result)
        number2 /= Double(result)
        return (Int(number),Int(number2))
    }
return arr3
}