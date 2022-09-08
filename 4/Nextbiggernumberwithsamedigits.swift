func nextBigger(num: Int) -> Int? {
  var num1 = num

var arr1 = [Int]()

while true {
    arr1.insert(num1 % 10, at: 0)
    num1 /= 10
    if num1 == 0 {
        break
    }
}

let size = arr1.count
let arr2 = arr1
var i = 1



while true {

    if arr1[size-i] == arr1[size - (i + 1)] {
    i += 1
    }else if arr1[size-i] > arr1[size - (i + 1)] {
    arr1[size - (i+1)] = arr1[size-i]
    arr1[size - i] = arr2[size - (i+1)]
    i += 1
}
    if i == size {
        break
    }
    
}
var myString = ""
_ = arr1.map{ myString = myString + "\($0)" }
let myInt = Int(myString)
  
  
return myInt
}