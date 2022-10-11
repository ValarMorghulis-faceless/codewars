func pyramid(_ n: Int) -> [[Int]] {
  if n == 0 {
    return []
  }
var num = 1
var num2 = 1
  var arr = [Int]()
    var arr1 = [[Int]]()
    while true {
        while num != 0 {
            arr.append(1)
            num -= 1
        }
        arr1.append(arr)
        arr = []
        num2 += 1
        num = num2
        if num2 == n + 1{
            break
        }
    }
return arr1
}