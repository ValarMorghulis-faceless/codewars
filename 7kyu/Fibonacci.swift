func fibonacci(n: Int) {
    var arr = [Int]()
    var num = 0
    var num1 = 1
    while arr.count < n {
        arr.append(num)
        num += num1
        num1 = num - num1
        
    }
    print(arr)
}