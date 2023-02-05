func longestRepetition(_ s: String) -> [String: Int] {
    if s.isEmpty {
        return ["": 0]
    }

    var currentChar: Character? = nil
    var currentCount = 0
    var maxChar: Character = s.first!
    var maxCount = 1

    for c in s {
        if let current = currentChar, current == c {
            currentCount += 1
        } else {
            currentChar = c
            currentCount = 1
        }

        if currentCount > maxCount {
            maxChar = c
            maxCount = currentCount
        }
    }

    return [String(maxChar): maxCount]
}