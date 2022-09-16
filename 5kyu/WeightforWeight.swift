func orderWeight(_ s: String) -> String {
  if s.count < 1 {
    return ""
  }
    var str = s
  var arr1 = str.components(separatedBy: " ")
  var arr2 = [Int]()
  var sum = 0
  for i in arr1 {
    sum = i.compactMap{$0.wholeNumberValue}.reduce(0, +)
    arr2.append(sum)
  }
  var lis = zip(arr1, arr2).sorted { $0.1 == $1.1 ? $0.0 > $1.0 : $0.1 < $1.1}
  var str2 = ""
  for i in lis {
    str2 += "\(i.0) "
  }
  str2.removeLast()
  return str2
}