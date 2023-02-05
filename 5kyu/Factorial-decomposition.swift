import Foundation 

func decomp(_ n: Int) -> String {
    var result = [Int: Int]()
    for i in 2...n {
        var temp = i
        for j in 2...i {
            while temp % j == 0 {
                result[j, default: 0] += 1
                temp /= j
            }
        }
    }
    let string = result.map({ key, value in value == 1 ? "\(key)" : "\(key)^\(value)" }).sorted(by: <).joined(separator: " * ")
    
    let sortedArray = string.components(separatedBy: " * ").sorted { (lhs, rhs) -> Bool in
        let lhsComponents = lhs.split(separator: "^")
        let rhsComponents = rhs.split(separator: "^")
        let lhsNumber = Int(lhsComponents[0]) ?? 0
        let rhsNumber = Int(rhsComponents[0]) ?? 0
        if lhsNumber != rhsNumber {
            return lhsNumber < rhsNumber
        } else {
            let lhsExponent = Int(lhsComponents.count == 2 ? lhsComponents[1] : "1") ?? 1
            let rhsExponent = Int(rhsComponents.count == 2 ? rhsComponents[1] : "1") ?? 1
            return lhsExponent < rhsExponent
        }
    }

    return sortedArray.joined(separator: " * ")
}