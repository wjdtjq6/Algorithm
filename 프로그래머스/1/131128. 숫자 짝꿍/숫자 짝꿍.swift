func solution(_ X:String, _ Y:String) -> String {
    var freqX = Array(repeating: 0, count: 10)
    var freqY = Array(repeating: 0, count: 10)
    
    for char in X {
        if let num = Int(String(char)) {
            freqX[num] += 1
        }
    }
    for char in Y {
        if let num = Int(String(char)) {
            freqY[num] += 1
        }
    }
    var result = ""
    for num in stride(from: 9, through: 0, by: -1) {
        let common = min(freqX[num], freqY[num])
        result += String(repeating: String(num), count: common)
    }
    if result.isEmpty {
        return "-1"
    } else if Int(result) == 0 {
        return "0"
    } else {
        return result
    }
}
