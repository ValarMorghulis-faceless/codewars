func stockList(_ listOfArt: [String], _ listOfCat: [String]) -> String {
    return listOfArt.isEmpty ? "" : listOfCat.map { cat in
        let sum = listOfArt.filter { $0.hasPrefix(cat) }.flatMap { return Int($0.components(separatedBy: " ").last ?? "") }.reduce(0, +)
        return "(\(cat) : \(sum))"
        }.joined(separator: " - ")
}