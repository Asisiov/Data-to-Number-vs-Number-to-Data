extension Data {
    
    init<T>(from value: T) {
        self = Swift.withUnsafeBytes(of: value) { Data($0) }
    }
    
    func to<T>(type: T.Type) -> T {
        return self.withUnsafeBytes { $0.pointee }
    }
}

// Example:

//        var float: Float32 = 34.0
//        let data = Data(from: float)
//        print("\(data as NSData)")
//
//        float = data.to(type: Float32.self)
//        print("\(float)")
