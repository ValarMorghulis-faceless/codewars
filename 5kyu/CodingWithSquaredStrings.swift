extension BinaryInteger {
    var isPerfectSquare: Bool {
        guard self >= .zero else { return false }
        var sum: Self = .zero
        var count: Self = .zero
        var squareRoot: Self = .zero
        while sum < self {
            count += 2
            sum += count
            squareRoot += 1
        }
        return squareRoot * squareRoot == self
    }
}


extension StringProtocol {
    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}
extension Collection {

    func unfoldSubSequences(limitedTo maxLength: Int) -> UnfoldSequence<SubSequence,Index> {
        sequence(state: startIndex) { start in
            guard start < endIndex else { return nil }
            let end = index(start, offsetBy: maxLength, limitedBy: endIndex) ?? endIndex
            defer { start = end }
            return self[start..<end]
        }
    }

    func every(n: Int) -> UnfoldSequence<Element,Index> {
        sequence(state: startIndex) { index in
            guard index < endIndex else { return nil }
            defer { let _ = formIndex(&index, offsetBy: n, limitedBy: endIndex) }
            return self[index]
        }
    }

    var pairs: [SubSequence] { .init(unfoldSubSequences(limitedTo: 2)) }
}
extension StringProtocol where Self: RangeReplaceableCollection {

    mutating func insert<S: StringProtocol>(separator: S, every n: Int) {
        for index in indices.every(n: n).dropFirst().reversed() {
            insert(contentsOf: separator, at: index)
        }
    }

    func inserting<S: StringProtocol>(separator: S, every n: Int) -> Self {
        .init(unfoldSubSequences(limitedTo: n).joined(separator: separator))
    }
}





func code(_ s: String) -> String {
  print(s)
  if s.count < 1 {
    return s
  }
    var str = s
  while true {
   if  str.count.isPerfectSquare{
      break
    }
    str += "\u{F7}"
  }
  let num = Int(sqrt(Double(str.count)))
  var str1 = ""
  for i in str {
    str1 += "\(i)"
  }
 
  let final10 = str1.unfoldSubSequences(limitedTo: num).joined(separator: "\n")
  
  func diag1Sym(_ entry: String) -> String {
    let lines = entry.components(separatedBy: "\n")
    var result = [String]()
    for index in lines.indices {
        let transformed = lines.map { $0[$0.index($0.startIndex, offsetBy: index)] }
        result.append(String(transformed))
    }
    return result.joined(separator: "\n")
}

func rot90Clock(_ entry: String) -> String {
    let reversedLines = entry.components(separatedBy: "\n").reversed().joined(separator: "\n")
    return diag1Sym(reversedLines)
}
  return rot90Clock(final10)
}


func decode(_ s: String) -> String {
   // your code
  
  func diag2Sym(_ s: String) -> String {
    return vertMirror(horMirror(diag1Sym(s)))
}
func rot90Counter(_ s: String) -> String {
    return horMirror(diag1Sym(s))
}
  let str = rot90Counter(s)
  
  let test = String(str.filter { !"\n\u{F7}".contains($0) })
  

  
  return test
}