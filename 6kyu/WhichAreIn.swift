func inArray(_ a1: [String], _ a2: [String]) -> [String] {
    // your code
  var arr1 = [String]()
  var arr2 = ["duplicates"]
  for i in a1 {
    for j in a2 {
      if j.contains(i){
        arr1.append(i)
          break
      }
    }
  }
  if a1 == a2 {
    return arr2
  }
    arr1.sort()
  return arr1
}