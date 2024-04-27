import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var front1 = 0, front2 = 0

    for i in goal {
        if front1 < cards1.count && cards1[front1] == i {
            front1 += 1
        }
        else if front2 < cards2.count && cards2[front2] == i {
            front2 += 1
        }
        else {
            return "No"
        }
    }
    return "Yes"
}