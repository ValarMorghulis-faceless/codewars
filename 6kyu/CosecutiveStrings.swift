func longestConsec(_ strarr: [String], _ k: Int) -> String {
    if strarr.isEmpty || k > strarr.count || k <= 0 {
        return ""
    }
    let strings = (0...strarr.count - k).map{strarr[$0...$0+k-1].reduce("", +)}
    return strings.sorted{$0.count > $1.count}.first!
}