func zeros(_ n: UInt32) -> Int {
    var num = 0
    var num1 = n
    while num1 > 0 {
        num1 /= 5
        num += Int(num1)
    }
    return num
}