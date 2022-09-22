func countKprimes(_ k: Int, _ start: Int, _ nd: Int) -> [Int] {
    // your code
    func primeFactors(_ n: Int) -> [Int] {
        var n = n
        var factors: [Int] = []

        var divisor = 2
        while divisor * divisor <= n {
            while n % divisor == 0 {
                factors.append(divisor)
                n /= divisor
            }
            divisor += divisor == 2 ? 1 : 2
        }
        if n > 1 {
            factors.append(n)
        }

        return factors
    }
    var arr1 = [Int]()
    for i in start...nd {
        if(primeFactors(i).count == k){
            arr1.append(i)
        }
    }
  return arr1
}



func puzzle(_ s: Int) -> Int {
    // your code
    var arr1 = [Int]()
    var arr2 = [Int]()
    var arr3 = [Int]()
    var num = 0
    arr1.append(contentsOf: countKprimes(1, 0, s))
    arr2.append(contentsOf: countKprimes(3, 0, s))
    arr3.append(contentsOf: countKprimes(7, 0, s))
    for i in arr1 {
        for j in arr2 {
            for b in arr3 {
                if i + j + b == s {
                    num += 1
                }
            }
        }
    }
    
    
    return num
    
}