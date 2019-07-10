//
//  watermelon-12922.swift
//  
//
//  Created by CHOMINJI on 10/07/2019.
//

import Foundation

// https://programmers.co.kr/learn/courses/30/lessons/12922

func solution(_ n: Int) -> String {
    var watermelons = Array(repeating: "수박", count: n/2)
    if n % 2 != 0 {
        watermelons.append("수")
    }
    return watermelons.joined()
}
