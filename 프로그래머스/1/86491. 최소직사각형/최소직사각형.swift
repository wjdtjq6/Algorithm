import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var maxW = 0
    var maxH = 0
    for i in sizes {
        let w = max(i[0], i[1])
        let h = min(i[0], i[1])
        maxW = max(maxW, w)
        maxH = max(maxH, h)
    }
    return maxW * maxH
}