func printerError(_ s: String) -> String {
    let errors = s.filter { $0 > "m" }
    return "\(errors.count)/\(s.count)"
}