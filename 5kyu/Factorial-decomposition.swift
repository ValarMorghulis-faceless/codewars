import Foundation 

func decomp(_ m: Int) -> String {
    // your code
  
  let primenumbers = [2,3,5,7,11,13,17,19,23,29]


var b = m

  var fact = 1
  for _ in 0..<b{
    fact *= m
    b -= 1
  }



var r = 0
var t = ""

var h = 0

while h < primenumbers.count{
    if fact % primenumbers[h] == 0{
        fact /= primenumbers[h]
        r += 1
    }else{
        t += "\(primenumbers[h])^\(r) * "
        h += 1
        r = 0
    }
}
return t
  
}