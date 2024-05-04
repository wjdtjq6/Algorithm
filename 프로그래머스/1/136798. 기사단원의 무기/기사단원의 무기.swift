import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var result = 0
    for i in  1...number {
        var arr: [Int] = []
        for j in 1...Int(sqrt(Double((i)))) {
            if i % j == 0 {
                arr.append(j)
                if j != i / j {
                    arr.append(i / j)
                }
            }
        }
        var arrcount = arr.count
        if arrcount > limit {
            arrcount = power
        }
        result += arrcount
    }
    return result
}