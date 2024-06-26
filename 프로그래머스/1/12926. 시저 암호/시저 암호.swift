func solution(_ s:String, _ n:Int) -> String {
    var result = ""
    for char in s {
        var ascii = Int(char.asciiValue!)
        switch ascii {
            case 65...90:
                ascii = (ascii + n - 65) % 26 + 65
            case 97...122:
                ascii = (ascii + n - 97) % 26 + 97 
            default:
                break
        }
        result += String(UnicodeScalar(UInt8(ascii)))
    }
    return result
}
