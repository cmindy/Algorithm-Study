//
//  MakeStrangeString-12930.swift
//  Algoshipda
//
//  Created by CHOMINJI on 15/07/2019.
//  Copyright © 2019 cmindy. All rights reserved.
//

import Foundation

//https://programmers.co.kr/learn/courses/30/lessons/12930

func solution(_ s:String) -> String {
    var chars = Array(s)
    for (n, k) in chars.enumerated() {
        if k.isLetter {
            chars[n] = n % 2 == 0 ? Character(k.uppercased()) : Character(k.lowercased())
        } else {
            let next = n + 1
            return String(chars[...n]) + solution(String(chars[next...]))
        }
    }
    return String(chars)
}


