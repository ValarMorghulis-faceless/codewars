func findIt(_ seq: [Int]) -> Int {
  let string = seq.map {String($0)}.joined(separator: "")
let mappedItems = seq.map { ($0, 1)}
    let counts = Dictionary(mappedItems, uniquingKeysWith: +)

for (key,value) in counts {
    if value % 2 == 1 {
        return key
    }
  
}
   return 1
  }