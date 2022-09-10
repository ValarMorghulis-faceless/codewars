func findUniq(_ arr: [Int]) -> Int {
  // your code here
  for i in arr {
    for j in arr {
        if i != j || i != arr[1] {
        return j
      }else {
      
      }
    }
  }
  return 0 // unique integer in the array
}