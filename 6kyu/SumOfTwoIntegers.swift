func add(_ x: Int, _ y: Int) -> Int {
  // Your Code Is Here ... Enjoy !!
    var i = 0
    var num = x
    while true {
        if y < 0 {
            i -= 1
            num -= 1
        }else {
            i += 1
            num += 1
        }
      
    if i == y {
        break
    }
      
}
  
  
    return num
}