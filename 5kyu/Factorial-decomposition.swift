import Foundation 

func decomp(_ m: Int) -> String {
    // your code
  
  let primenumbers = [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97]


var b = m

  var fact = 1
  for _ in 0..<b{
    fact *= b
    b -= 1
  }



var r = 0
var t = ""

var h = 0
    
    while h < primenumbers.count {
        if fact % primenumbers[h] == 0 {
            fact /= primenumbers[h]
            r += 1
        }else {
            if r == 0 {
                break
            }else if r > 1 {
            t += "\(primenumbers[h])^\(r) * "
            h += 1
            r = 0
            }else {
                t += "\(primenumbers[h]) * "
                h += 1
                r = 0
            }
        }
        if fact == 0{
            break
        }
        
    }
    
    t.removeLast()
    t.removeLast()
    t.removeLast()
    return t
  
}