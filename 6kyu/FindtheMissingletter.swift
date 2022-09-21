func findMissingLetter(_ chArr: [Character]) -> Character {

  let str = String(chArr)
  let first = str.first!
  let last = str.last!
  let initalAlphabet = Unicode.Scalar("\(first)")?.value
  let endAlphabet = Unicode.Scalar("\(last)")?.value
  var arr1 = [Any?]()
    for k in (initalAlphabet ?? 0)...(endAlphabet ?? 0){
   if let val = Unicode.Scalar(k) {
       arr1.append(val)
   }
}
for i in arr1 {
    if str.contains("\(i ?? "0")"){
        
    }else {
        return Character("\(i ?? "0")")
    }
}
  return "f"
}