func flattenAndSort<T: Comparable>(_ arr: [[T]]) -> [T] {
  var arr1 = [T]()
  for i in arr{
    for j in i{
      arr1.append(j)
    }
  }
  arr1.sort(by: <)
  
return arr1
}