import Foundation

let romanDict: [Character : Int] = [
    "O" : 0,
    "I" : 1,
    "V" : 5,
    "X" : 10,
    "L" : 50,
    "C" : 100,
    "D" : 500,
    "M" : 1000
]

func solution(_ string: String) -> Int {
    
    var arrstr = Array(string)
    var number = 0
    arrstr.append("O")
    var i = 0
    while i < arrstr.count - 1  {
        if romanDict[arrstr[i]]! >= romanDict[arrstr[i + 1]]! {
            number += romanDict[arrstr[i]]!
            print("+ values:", romanDict[arrstr[i]]!, romanDict[arrstr[i + 1]]! )
        } else {
            number -=  romanDict[arrstr[i]]!
            print("- values:", romanDict[arrstr[i + 1]]!, romanDict[arrstr[i]]! )
        }
       i += 1
    }
    
    return number
}