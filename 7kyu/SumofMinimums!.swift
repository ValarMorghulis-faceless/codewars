func sumOfMinimums(_ numbers: [[Int]]) -> Int {
  var sum = 0
for num in numbers {
  sum += num.min() ?? 0
  }
return sum
  
}