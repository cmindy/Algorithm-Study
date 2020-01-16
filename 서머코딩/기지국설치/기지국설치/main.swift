//
//  main.swift
//  기지국설치
//
//  Created by CHOMINJI on 2020/01/16.
//  Copyright © 2020 cmindy. All rights reserved.
//

import Foundation

// https://programmers.co.kr/learn/courses/30/lessons/12979

func solution(_ n:Int, _ stations:[Int], _ w:Int) -> Int{
    var answer: Double = 0
    var distances: [Int] = []
    
    for index in 1..<stations.count {
        let rhs = stations[index]
        let lhs = stations[index-1]
        let distance = (rhs-w)-(lhs+w)-1
        distances.append(distance)
    }
    
    let start = stations[0]-w-1
    let end = n - stations.last! - w
    distances += [start, end]

    distances
        .lazy
        .filter { $0 > 0 }
        .map { Double($0) }
        .forEach {
            answer += ceil($0/Double(w*2+1))
    }
    
    print(answer)
    
    return Int(answer)
}

solution(11, [4,11], 1) // 3
solution(16, [9], 2) // 3
