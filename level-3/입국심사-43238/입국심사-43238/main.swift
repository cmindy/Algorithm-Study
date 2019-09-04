//
//  main.swift
//  입국심사-43238
//
//  Created by CHOMINJI on 04/09/2019.
//  Copyright © 2019 cmindy. All rights reserved.
//

import Foundation

// https://programmers.co.kr/learn/courses/30/lessons/43238?language=swift

//처음에 모든 심사대는 비어있습니다. 한 심사대에서는 동시에 한 명만 심사를 할 수 있습니다. 가장 앞에 서 있는 사람은 비어 있는 심사대로 가서 심사를 받을 수 있습니다. 하지만 더 빨리 끝나는 심사대가 있으면 기다렸다가 그곳으로 가서 심사를 받을 수도 있습니다.
//모든 사람이 심사를 받는데 걸리는 시간을 최소로 하고 싶습니다.

func solution(_ n:Int, _ times:[Int]) -> Int64 {
    var left = 1
    var right = n * times.max()!
    
    while left < right {
        let mid = left + (right - left) / 2
        let result = times.map { mid / $0 }.reduce(0, +)
        if result == n {
            return Int64(findAnswer(of: times, mid: mid, n: n))
        } else if result < n {
            left = mid + 1
        } else {
            right = mid
        }
    }
    return 0
}

func findAnswer(of times: [Int], mid: Int, n: Int) -> Int {
    var result = n
    var newMid = mid
    while result == n {
        result = times.map { newMid / $0 }.reduce(0, +)
        if result != n {
            return newMid + 1
        }
        newMid -= 1
    }
    return 0
}


func binarySearch<T: Comparable>(_ a: [T], key: T) -> Int? {
    var lowerBound = 0
    var upperBound = a.count
    while lowerBound < upperBound {
        let midIndex = lowerBound + (upperBound - lowerBound) / 2
        if a[midIndex] == key {
            return midIndex
        } else if a[midIndex] < key {
            lowerBound = midIndex + 1
        } else {
            upperBound = midIndex
        }
    }
    return nil
}

//print(solution(4, [3,5]))
print(solution(6, [7,10])) // 28
//print(solution(6, [5,7,10])) //15
print(solution(1, [2,2]))

