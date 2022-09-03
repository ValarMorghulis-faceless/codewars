func tribonacci(_ signature: [Int], _ n: Int) -> [Int] {
    var arr1 = signature
    var num1 = arr1[0]
    var num2 = arr1[1]
    var num3 = arr1[2]
    
    if n == 0{
        arr1 = [Int]()
        return arr1
        
    }else{
        for _ in 0...n{
            let num = num1 + num2 + num3
            num1 = num2
            num2 = num3
            num3 = num
            arr1.append(num3)
            
        }
    }
    arr1.removeLast()
  arr1.removeLast()
  arr1.removeLast()
  arr1.removeLast()
    return arr1
    
}