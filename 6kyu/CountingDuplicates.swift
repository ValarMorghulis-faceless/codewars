func countDuplicates(_ s:String) -> Int {
  var str1 = s.lowercased()
    var num = 0
    let arr1 = Array(str1)
    let mappedItems = arr1.map { ($0, 1)}
    let counts = Dictionary(mappedItems, uniquingKeysWith: +)
    for value in counts.values {
        if  value > 1 {
            num += 1
        }
        
    }
  return num
}