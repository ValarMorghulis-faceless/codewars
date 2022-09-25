func diag2Sym(_ s: String) -> String {
    let arr = String(s.reversed()).split(separator: "\n").map { Array($0)}
  var str = ""
  var i = 0
  var j = 0
  while true {
    str += "\(arr[j][i])"
    j += 1
    if j == arr.count {
      j = 0
      i += 1
      str += "\n"
    }
    if i == arr.count {
      break
    }
  }
  str.removeLast()
  return str
}
func rot90Counter(_ s: String) -> String {
    // your code
  var str = diag2Sym(s).split(separator: "\n" ).map { String($0.reversed())}.reduce("", { $0 + "\n" + $1 })
  str.removeFirst()
  return str
}
func selfieDiag2Counterclock(_ s: String) -> String {
   var diag = Array(diag2Sym(s).split(separator: "\n"))
    var clock = Array(rot90Counter(s).split(separator:"\n"))
    var selfen = Array(s.split(separator: "\n"))
    var str = ""
    var i = 0
    while true {
      str += "\(selfen[i])|\(diag[i])|\(clock[i])\n"
      i += 1
      if i == selfen.count {
        break
      }
    }
    str.removeLast()
    
  return str
}
// replace the dots by your function parameter
func oper(_ fcn: (String) -> String, _ s: String) -> String {
    // your code
  return fcn(s)
} 