func productFib(_ prod : UInt64) -> (UInt64,UInt64,Bool) {
    
  var a = UInt64(0)
  var b = UInt64(1)
  
  while prod > a * b {
    (a,b) = (b, a + b)
  }
  
  return (a,b, prod == a * b)
}