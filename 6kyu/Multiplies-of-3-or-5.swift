func solution(_ num: Int) -> Int{
    var total = 0
    for i in 0..<num{
        if i % 3 == 0 || i % 5 == 0{
            total += i
            
          
        }
    
    }
    return total
}