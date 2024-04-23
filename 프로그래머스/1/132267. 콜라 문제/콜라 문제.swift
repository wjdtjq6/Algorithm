import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var n = n
    var result = 0
    for i in 0...n where  n > b {
        let numbers = n / a
        n = n - numbers * a
        n = n + numbers * b
        result += numbers * b
    }
    return result
}
