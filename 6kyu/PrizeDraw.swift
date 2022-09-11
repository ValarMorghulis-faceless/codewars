func rank(_ st: String, _ we: [Int], _ n: Int) -> String {
    // your code
  if st.isEmpty {
    return "No participants"
  }
 
  
  
  
  
  let str = "abcdefghijklmnopqrstuvwxyz"
  let record = st.components(separatedBy: ",")
  
  if n > record.count{
    return "Not enough participants"
  }
  
  var num = 0
  var num2 = 0
  var arr1 = [String:Int]()
  var b = 0
  for i in record {
    for char in str {
      num += 1
      if i.contains(char) || i.contains(char.uppercased()){
        num2 += num 
      }
    }
    num2 += i.count
    while b < record.count{
      num2 *= we[b]
      b += 1
      break
     
  }
    arr1[i] = num2
    num = 0
    num2 = 0
    
  }
  
let sortedOne = arr1.sorted { (first, second) -> Bool in
    return first.value > second.value
}
  
  
  
  
  return sortedOne[n].key
  
}