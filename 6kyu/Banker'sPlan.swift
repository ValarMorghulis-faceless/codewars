func fortune(_ f0: Int, _ p: Double, _ c0: Int, _ n: Int, _ i: Double) -> Bool {
    // your code
  var g = 0
  var f1 = Double(f0)
  var c1 = Double(c0)
  var num1: Double = ((p/100)*f1)
  var num2: Double = c1
  //var oper: Bool = true
  var total: Double = 0
  while g < n{
   
   
    total = f1 + num1 - num2
    num2 += (c1 * (i/100))
    c1 = num2
   
    f1 = total
    num1 = ((p/100)*f1)
 
    g += 1
    
    
  }
  
  
  if total < 0{
      return false
    }else{
      return true
    }
  
  
  
  
  
  
}