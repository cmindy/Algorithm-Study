//
//  KthNumber-42748.swift
//  
//
//  Created by CHOMINJI on 12/07/2019.
//

import Foundation

// https://programmers.co.kr/learn/courses/30/lessons/42748

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    let result = commands.compactMap { command -> Int in
        let startIndex = command[0] - 1
        let endIndex = command[1] - 1
        let targetIndex = command[2] - 1
        return array[startIndex...endIndex].sorted()[targetIndex]
    }
    return result
}

//func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
//    var result: [Int] = []
//    commands.forEach { command in
//        let startIndex = command[0] - 1
//        let endIndex = command[1] - 1
//        let targetIndex = command[2] - 1
//        result.append(array[startIndex...endIndex].sorted()[targetIndex])
//    }
//    return result
//}

// 값 복사가 시간은 더 빠르다.
