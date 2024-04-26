import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var arr: [Int] = []
    var result: [Int] = []
    for i in score {
        arr.append(i)
        if arr.count > k {
            arr.sort()
            arr.removeFirst()
        }
        result.append(arr.min()!)
    }
    return result
}
//1.score업데이트
//2.명예의 전당에 큰 scroe들을 k만큼 저장
//3.k만큼 저장된 명예의 전당에서 가장 낮은 점수 발표