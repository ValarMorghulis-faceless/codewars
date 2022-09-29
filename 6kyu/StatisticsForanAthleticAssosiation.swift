extension Array {
    func chunked(into size: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0 ..< Swift.min($0 + size, count)])
        }
    }
}

func stat(_ strg: String) -> String {
  let test = strg.components(separatedBy: CharacterSet(charactersIn: "|,")).chunked(into: 3)
  var i = 0
  var num = 0
  var arr = [Int]()
  while true {
    num += Int(test[i][0])! * 3600 + Int(test[i][1])! * 60 + Int(test[i][2])!
    arr.append(num)
    num = 0
    i += 1
    if i == test.count {
      break
    }
  }
  func calculateMedian(array: [Int]) -> Float {
    let sorted = array.sorted()
    if sorted.count % 2 == 0 {
        return Float((sorted[(sorted.count / 2)] + sorted[(sorted.count / 2) - 1])) / 2
    } else {
        return Float(sorted[(sorted.count - 1) / 2])
    }
}
  let range = arr.max()! - arr.min()!
let mean = arr.reduce(0, +) / arr.count
let median = Int(calculateMedian(array: arr))
  func timeString(_ time: TimeInterval) -> String {
        let hour = Int(time) / 3600
        let minute = Int(time) / 60 % 60
        let second = Int(time) % 60

        // return formated string
        return String(format: "%02i|%02i|%02i", hour, minute, second)
    }
  let str = "Range: \(timeString(TimeInterval(range))) Average: \(timeString(TimeInterval(mean))) Median: \(timeString(TimeInterval(median)))"
return str
}