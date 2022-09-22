func consecKprimes(_ k: Int, _ arr: [Int]) -> Int {
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
    
    var sum = 0
    var i = 0
    while true {
      if arr.count < 2 {
        break
      }
        if primeFactors(arr[i]).count == k && primeFactors(arr[i + 1]).count == k {
            sum += 1
        }
        i += 1
        if i > arr.count - 2 {
            break
        }
    }
  if arr.count < 2 {
    return 0
  }

    return sum
}