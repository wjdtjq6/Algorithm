import Foundation

func solution(_ s: String, _ skip: String, _ index: Int) -> String {
    let skipSet = Set(skip)
    var result = ""

    for char in s {
        var index = index
        var unicodeValue = char.asciiValue!

        while index > 0 {
            unicodeValue += 1
            if unicodeValue > 122 {
                unicodeValue = 97
            }
            if !skipSet.contains(Character(Unicode.Scalar(unicodeValue))) {
                index -= 1
            }
        }
        result.append(Character(Unicode.Scalar(unicodeValue)))
    }

    return result
}
