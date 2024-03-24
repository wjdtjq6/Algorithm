import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var answer:Int64 = -1
    var prices = 0
    for i in 1...count {
        prices -= price * i
        answer = -Int64(money + prices)
    }
    if answer <= 0 {
        return 0
    }
    return answer
}