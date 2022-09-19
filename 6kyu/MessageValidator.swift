func isAValidMessage(_ message: String) -> Bool {
    guard message.count > 0 else { return true }
    let characters = message.components(separatedBy: .decimalDigits).filter { $0.count > 0 }
    let numbers = message.components(separatedBy: .letters).filter { $0.count > 0 }
    let zips = zip(characters, numbers)
    guard zips.map({ $1 + $0 }).joined() == message else { return false }
    return zips.allSatisfy { c, i in
        c.count == Int(i)
    }
}