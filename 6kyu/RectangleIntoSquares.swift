func sqInRect(_ lng: Int, _ wdth: Int) -> [Int]? {
    // your code
    var length = lng
    var width = wdth
    var arr1 = [Int]()
    var num1 = 0
    
    if length == width{
        return nil
    } else {
        while true {
        if length > width {
            num1 = length - width
            arr1.append(width)
            length = num1
        } else {
            num1 = width - length
            arr1.append(length)
            width = num1
        }
        
        
        if num1 == 0 {
            break
        }
    
   
    }
    let arr2 = arr1
return arr2
    
}
}