func ipv4(of i32: UInt32) -> String {
return i32.IPv4String()
}

extension UInt32 {

    public func IPv4String() -> String {

        let ip = self

        let byte1 = UInt8(ip & 0xff)
        let byte2 = UInt8((ip>>8) & 0xff)
        let byte3 = UInt8((ip>>16) & 0xff)
        let byte4 = UInt8((ip>>24) & 0xff)

        return "\(byte4).\(byte3).\(byte2).\(byte1)"
    }
}