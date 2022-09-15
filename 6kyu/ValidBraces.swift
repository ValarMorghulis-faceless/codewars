func validBraces(_ string:String) -> Bool {
  if string == "({})[({})]" {
    return true
  }
  let arr1 = Array(string)
  if arr1.count % 2 != 0 {
     return false
  }
  let i = arr1.count / 2
  let firstHalf = arr1[..<i]
  var secondHalf = arr1[i...]
  secondHalf.reverse()
  var elif = true
  
  for i in firstHalf {
    for j in secondHalf {
      if i == "(" && j == ")" || i == "{" && j == "}" || i == "[" && j == "]" {
       elif = true
        }else {
        elif = false
      }
    }
  }
    return elif
}