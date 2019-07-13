//
//  Average-12944.swift
//  
//
//  Created by CHOMINJI on 11/07/2019.
//

import Foundation

// https://programmers.co.kr/learn/courses/30/lessons/12944

func solution(_ arr:[Int]) -> Double {
    let total = arr.reduce(0) {
        return ($0 + $1)
    }
    return Double(total / arr.count)
}
