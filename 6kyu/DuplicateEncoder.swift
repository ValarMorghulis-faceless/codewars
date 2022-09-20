func duplicateEncode(_ word: String) -> String {
  var str = word.lowercased()
  var str2 = ""
  var arr = Array(str)
  for i in arr {
    let tok = str.components(separatedBy: "\(i)")
    if tok.count - 1 > 1 {
      str2 += ")"
    }else {
      str2 += "("
    }
  }
  return str2
}
