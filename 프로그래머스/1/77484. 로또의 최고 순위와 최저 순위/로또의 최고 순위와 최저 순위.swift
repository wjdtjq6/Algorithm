import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    var num = 0
    var zeronum = 0
    var result = 0
    for i in lottos {
        if i == 0 {
                zeronum += 1
            }
        for j in win_nums {
            if i == j {
                num += 1
            }
        }
    }
    switch num {
        case 6 : result = 1
        case 5 : result = 2
        case 4 : result = 3
        case 3 : result = 4
        case 2 : result = 5
        default : result = 6
    }
    if zeronum == 6 {
        zeronum = 5
    }
    return [result - zeronum,result]
}