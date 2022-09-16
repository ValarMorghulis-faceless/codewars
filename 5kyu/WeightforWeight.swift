func orderWeight(_ s: String) -> String {
    // your code
  var arr1 = s.components(separatedBy: " ")
  var arr2 = [Int]()
  var sum = 0
  for i in arr1 {
    sum = i.compactMap{$0.wholeNumberValue}.reduce(0, +)
    arr2.append(sum)
  }
  var lis = zip(arr1, arr2).sorted {$0 < $1}.sorted {$0.1 < $1.1}
  var str2 = ""
  for i in lis {
    str2 += "\(i.0) "
  }
  str2.removeLast()
  return str2
}