import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])
for i in 0..<Int(b) {
    for j in 0..<Int(a) {
        print("*", terminator:"")
    }
    print("")
}