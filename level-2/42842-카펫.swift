import Foundation

// https://programmers.co.kr/learn/courses/30/lessons/42842

func solution(_ brown:Int, _ red:Int) -> [Int] {
    let temp = brown + red
    var muls = [(width: Int, height: Int)]()
    for width in 1..<temp+1 {
        let height = temp / width
        if temp % width == 0 && width >= height {
            muls.append((width: width, height: height))
        }
    }
    
    for mul in muls {
        let possibleRed = (mul.width - 2) * (mul.height - 2)
        if possibleRed == red {
            return [mul.width, mul.height]
        }
    }
    return []
}

print(solution(10, 2)) //[4,3]
solution(8, 1) //[3,3]
solution(24, 24) //[8,6]
