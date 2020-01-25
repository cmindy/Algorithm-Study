//
//  main.swift
//  위장
//
//  Created by CHOMINJI on 2020/01/25.
//  Copyright © 2020 cmindy. All rights reserved.
//

import Foundation

//https://programmers.co.kr/learn/courses/30/lessons/42578


func solution(_ clothes: [[String]]) -> Int {
    var closet: [String: [String]] = [:]
    
    for cloth in clothes {
        let kind = cloth[1]
        let name = cloth[0]
        closet[kind, default: [String]()].append(name)
    }
    
    return closet.values.map { $0.count }
        .reduce(1) { $0 * ($1 + 1) } - 1
}

solution([["yellow_hat", "headgear"], ["blue_sunglasses", "eyewear"], ["green_turban", "headgear"]]) //5

solution([["crow_mask", "face"], ["blue_sunglasses", "face"], ["smoky_makeup", "face"]]) // 3

solution([["a", "face"], ["b", "face"], ["c", "eyewear"], ["d", "eyewear"], ["e", "arm"], ["f", "arm"]])
