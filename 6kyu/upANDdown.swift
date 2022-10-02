func arrange(_ s: String) -> String {
        var arrS = s.components(separatedBy: " "), localVar: String = ""
        arrS.enumerated().forEach {
        if $0.offset < arrS.count - 1 {
            if $0.offset % 2 == 0, arrS[$0.offset].count > arrS[$0.offset + 1].count { change($0.offset) }
            if $0.offset % 2 != 0, arrS[$0.offset].count < arrS[$0.offset + 1].count { change($0.offset) }
            }
        }
        func change(_ ind: Int) { localVar = arrS[ind + 1]; arrS[ind + 1] = arrS[ind]; arrS[ind] = localVar }
        (0...arrS.count - 1).forEach { arrS[$0] = $0 % 2 == 0 ? arrS[$0].lowercased() : arrS[$0].uppercased()}
        return arrS.joined(separator: " ")
    }