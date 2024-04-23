import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var n = n
    var a = a
    var b = b
    var result = 0
    for i in 0...n where  n > b {
        n /= a
        // n *= b
        // result += n
        n = n - (n * a)
        n = n + (n * b)
        result += n * b
    }
    let height = 160
    let weight = 50
    let waterGuide: Double = (height + weight) / Double(100)
    print("\(height) \(weight) \(waterGuide)")
    return result
}
