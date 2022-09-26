func decompose(_ nrStr: String, _ drStr: String) -> String {
    
    func egypet (_ a: Int, _ b: Int) -> String{
       if a < 1 || b < 1 {
         return ""
       }
        var num = a
        var num2 = a
        if num == num2 {
            var str = ""
        }
        num -= 1
        if b >= a {
            let remainder = b % a
            var divisor = b / a
            if remainder != 0 {
                divisor += 1
                str += "\("1/" + String(divisor) + ",")"
                egypet(a * divisor - b, b * divisor)
            }else {
                str += "\("1/" + String(divisor))"
            }
        }else {
            str += "\(String(a / b) + ",")"
            egypet(a % b, b)
        }
        return str
    }
    var str = ""
    str = "\(egypet(Int(nrStr)!, Int(drStr)!))"
  if Int(nrStr)! < 1 || Int(drStr)! < 1 {
    return ""
  }else if Int(nrStr)! == Int(drStr)! {
      return "1"
  }
    if Int(nrStr)! > Int(drStr)! && Int(nrStr)! % Int(drStr)! == 0 {
       
      return String(Int(nrStr)! / Int(drStr)!)
    }
     
    
    return String(str)
}