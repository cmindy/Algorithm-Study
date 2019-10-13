import Foundation

let inputs = readLine()!.split(separator: " ")
let n = Int(inputs[0])!
let m = Int(inputs[1])!

var nums = [Int]()
var result = 10000000000
for _ in 0..<n {
    nums.append(Int(readLine()!)!)
}

nums.sort(by: >)

var i = 0, j = 0
while j < n, i+1 <= nums.count, j+1 <= nums.count {
    if nums[i] - nums[j] >= m {
        result = min(result, nums[i] - nums[j])
        i += 1
    } else {
        j += 1
    }
}

print(result)
