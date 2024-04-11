import Foundation

func solution(_ t: String, _ p: String) -> Int {
    let pValue = Int(p)!
    var count = 0
    for i in 0...(t.count - p.count) {
        let subString = String(t[t.index(t.startIndex, offsetBy: i)..<t.index(t.startIndex, offsetBy: i + p.count)])
        let subValue = Int(subString)!
        if subValue <= pValue {
            count += 1
        }
    }
    return count
}