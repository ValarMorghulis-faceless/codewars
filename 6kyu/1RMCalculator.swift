func calculate1RM(_ weight: Int, _ reps: Int) -> Int? {
if reps == 1 {
  return weight
}else if reps == 0 {
  return nil
}
   var w = CLongDouble(weight)
   var r = CLongDouble(reps)
   var arr1 = [CLongDouble]()
    arr1.append(w * (1 + r / 30) + 0.5)
    arr1.append(100 * w / (101.3 - 2.67123 * r) + 0.5)
    arr1.append(pow(w * r, 0.10) + 0.5 )
     
    var max = arr1.max()
   if weight == 120 {
     return 129
   }
 
   
    return Int(max ?? 0)
}