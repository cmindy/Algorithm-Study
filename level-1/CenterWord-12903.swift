//
//  CenterWord-12903.swift
//  
//
//  Created by CHOMINJI on 12/07/2019.
//

import Foundation

// https://programmers.co.kr/learn/courses/30/lessons/12903#

func solution(_ s:String) -> String {
    let characters = Array(s)
    let middle = s.count / 2
    return characters.count % 2 == 0 ? String(characters[middle - 1...middle]) : String(characters[middle])
}
