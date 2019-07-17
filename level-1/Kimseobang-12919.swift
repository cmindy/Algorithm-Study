//
//  Kimseobang-12919.swift
//  
//
//  Created by CHOMINJI on 11/07/2019.
//

import Foundation

// https://programmers.co.kr/learn/courses/30/lessons/12919

func solution(_ seoul:[String]) -> String {
    let searchWord = "Kim"
    guard let location = seoul.firstIndex(of: searchWord) else {
        return ""
    }
    let result = "김서방은 \(location)에 있다"
    return result
}
