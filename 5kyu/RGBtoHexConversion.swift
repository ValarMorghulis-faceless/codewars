func rgb(_ r: Int, _ g: Int, _ b: Int) -> String {
print(r)
  print(g)
  print(b)
  var red = r
  var green = g
  var blue = b
 
  if red > 255{
    red = 255
  } else if red < 0 {
    red = 0
  }
  if green > 255{
    green = 255
  } else if green < 0 {
    green = 0
  }
  if blue > 255{
    blue = 255
  } else if blue < 0 {
    blue = 0
  }
  
  
  let hexValue = String(format:"%02X", Int(red)) + String(format:"%02X", Int(green)) + String(format:"%02X", Int(blue))
  
  
  print(hexValue)
    return hexValue
}