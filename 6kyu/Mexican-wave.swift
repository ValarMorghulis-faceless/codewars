func wave(_ y: String) -> [String] {

  //Your code here
  var t = y
  var b = ""
  var c = ""
  var arr1 = [String]()
  for char in t{
 if char != " "{
    b = char.uppercased()
    t.removeFirst()
    
    b += t
    
    b = c + b
    
    c.append(char)
    
    arr1.append(b)
   
}else{
   b = char.uppercased()
    t.removeFirst()
    
    b += t
    
   
    
    c.append(" ")
    b = c + b
    
 }
    
  }
  
  
  
  
  
  
  return arr1
}