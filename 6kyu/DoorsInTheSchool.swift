func doors(_ n: Int) -> Int {
    var doorsArray = Array(repeating: 1, count: n)
    var i = 1
    while i <= n{
        
        for j in stride(from: i, to: doorsArray.count, by: i + 1) {
            
            doorsArray[j] = (doorsArray[j] == 1) ? 0 : 1
        }
        
        i += 1
    }
    
    return doorsArray.reduce(0, +)
}
