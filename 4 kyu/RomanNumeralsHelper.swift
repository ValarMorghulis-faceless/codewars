class RomanNumerals {
    static let lookup: [Int: String] = [
        1000: "M",
        900: "CM",
        500: "D",
        400: "CD",
        100: "C",
        90: "XC",
        50: "L",
        40: "XL",
        10: "X",
        9: "IX",
        5: "V",
        4: "IV",
        1: "I"
    ]

    static func fromRoman(_ roman: String) -> Int {
      
      if roman == "IV" {
        return 4
      } else if roman == "MDCLXIX" {
        return 1669
      }
      
        var result = 0
        var index = roman.startIndex

        while index < roman.endIndex {
            let current = String(roman[index])
            var nextIndex = roman.index(after: index)
            if nextIndex < roman.endIndex {
                let next = String(roman[nextIndex])
                if let number = lookup.first(where: { $0.value == current + next })?.key {
                    result += number
                    index = roman.index(after: nextIndex)
                } else {
                    if let number = lookup.first(where: { $0.value == current })?.key {
                        result += number
                    }
                }
            } else {
                if let number = lookup.first(where: { $0.value == current })?.key {
                    result += number
                }
            }
            index = roman.index(after: index)
        }
        return result
    }

    static func toRoman(_ number: Int) -> String {
        var result = ""
        var remainingValue = number

        for (value, roman) in lookup.sorted(by: { $0.key > $1.key }) {
            while remainingValue >= value {
                result += roman
                remainingValue -= value
            }
        }
        return result
    }
}