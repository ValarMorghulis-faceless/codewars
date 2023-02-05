func nextBigger(num: Int) -> Int? {
    var digits = Array(String(num)).map { Int(String($0))! }
    var i = digits.count - 2
    while i >= 0 && digits[i] >= digits[i + 1] {
        i -= 1
    }
    if i == -1 {
        return nil
    }
    var j = digits.count - 1
    while digits[j] <= digits[i] {
        j -= 1
    }
    let temp = digits[i]
    digits[i] = digits[j]
    digits[j] = temp
    var k = i + 1
    var l = digits.count - 1
    while k < l {
        let temp = digits[k]
        digits[k] = digits[l]
        digits[l] = temp
        k += 1
        l -= 1
    }
    let nextNum = digits.reduce(0) { $0 * 10 + $1 }
    return nextNum
}