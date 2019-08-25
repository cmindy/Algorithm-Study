//
//  NumberReverseToArray-12932.swift
//  
//
//  Created by CHOMINJI on 11/07/2019.
//

import Foundation

// https://programmers.co.kr/learn/courses/30/lessons/12932

func solution(_ n:Int64) -> [Int] {
    return "\(n)".reversed().compactMap{ Int(String($0)) }
}
