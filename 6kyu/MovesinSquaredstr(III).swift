func diag1Sym(_ s: String) -> String {
    // your code
  let arr = s.split(separator: "\n").map { Array($0)}
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

func rot90Clock(s: String) -> String {
    // your code
  var str = diag1Sym(s).split(separator: "\n" ).map { String($0.reversed())}.reduce("", { $0 + "\n" + $1 })
  str.removeFirst()
  return str
}
func selfieAndDiag1(_ s: String) -> String {
    let arr2 = s.split(separator: "\n")
let arr = s.split(separator: "\n").map { Array($0)}
  var str = ""
var str2 = ""
  var i = 0
  var j = 0
  while true {
    str += "\(arr[j][i])"
    j += 1
    if j == arr.count {
     str2 += "\(arr2[i])|" + "\(str)\n"
      j = 0
      i += 1
      str = ""
    }
    if i == arr.count {
      break
    }
    }
  str2.removeLast()
  return str2
}
// replace the dots with function parameter
func oper(_ fcn: (String) -> String, _ s: String) -> String {
    return fcn(s)
} 