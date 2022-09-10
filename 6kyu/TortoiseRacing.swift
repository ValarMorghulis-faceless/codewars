func race(_ v1: Int, _ v2: Int, _ g: Int) -> [Int]? {
    let v11 = Float(v1)
    let v22 = Float(v2)
    let s = Float(g)
  
  if v1 >= v2 {
    return nil
  }
  
    let num1 = (v22 * s) / (v22 - v11)
    let num2 = (num1 - s) / v11
    
    
  
    let hours = Int(num2)
    let minutes = Int((num2*60) .truncatingRemainder(dividingBy: Float(60)))
    let seconds = Int((num2*3600) .truncatingRemainder(dividingBy: Float(60)))
    
   

    let arr1 = [hours, minutes, seconds]
  
  return arr1
}
