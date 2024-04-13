import Foundation

func solution(_ s:String) -> Int {
    let numArray = ["zero","one","two","three","four","five","six","seven","eight","nine"]
    var resultArray = s
    for i in 0..<numArray.count {
        resultArray = resultArray.replacingOccurrences(of:numArray[i],with:String(i))
    }
    return Int(resultArray)!
}
 