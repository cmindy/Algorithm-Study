//
//  모의고사-42840.swift
//  
//
//  Created by CHOMINJI on 20/07/2019.
//

import Foundation

//https://programmers.co.kr/learn/courses/30/lessons/42840

func solution(_ answers:[Int]) -> [Int] {
    let guessWay1 = [1, 2, 3, 4, 5]
    let guessWay2 = [2, 1, 2, 3, 2, 4, 2, 5]
    let guessWay3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    var numOfCorrects: [Int: Int] = [:]
    
    for (n, answer) in answers.enumerated() {
        if answer == guessWay1[n % guessWay1.count] {
            numOfCorrects[1, default: 0] += 1
        }
        if answer == guessWay2[n % guessWay2.count] {
            numOfCorrects[2, default: 0] += 1
        }
        if answer == guessWay3[n % guessWay3.count] {
            numOfCorrects[3, default: 0] += 1
        }
    }
    print(numOfCorrects)
    let max = numOfCorrects.values.max()!
    let result = numOfCorrects.filter { max == $0.value }.map { $0.key }.sorted(by: <)
    return result
}
