//
//  main.swift
//  실패율-42889
//
//  Created by CHOMINJI on 25/08/2019.
//  Copyright © 2019 cmindy. All rights reserved.
//

import Foundation

// https://programmers.co.kr/learn/courses/30/lessons/42889


//실패율은 다음과 같이 정의한다.
//스테이지에 도달했으나 아직 클리어하지 못한 플레이어의 수 / 스테이지에 도달한 플레이어 수
//전체 스테이지의 개수 N, 게임을 이용하는 사용자가 현재 멈춰있는 스테이지의 번호가 담긴 배열 stages가 매개변수로 주어질 때, 실패율이 높은 스테이지부터 내림차순으로 스테이지의 번호가 담겨있는 배열을 return 하도록 solution 함수를 완성하라.

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var n: Double = Double(stages.count)
    var possibilities: [Int: Double] = [:]
    let table = stages.filter { $0 != N + 1 }
        .reduce(into: [:]) { (dict, stage) in
            dict[stage, default: 0] += 1
            
    }
    let sortedTable = table.sorted(by: { $0.key < $1.key })
    
    for stage in 1...N {
        possibilities[stage] = 0
    }
    for pack in sortedTable {
        possibilities[pack.key] = (Double(pack.value) / n)
        n -= Double(pack.value)
    }
    
    let returnValue = possibilities.sorted(by: {
        if $0.value == $1.value {
            return $0.key < $1.key
        }
        return $0.value > $1.value }).map { $0.key }
    
    return returnValue
}

solution(5, [2, 1, 2, 6, 2, 4, 3, 3]) //[3,4,2,1,5]
solution(4, [4,4,4,4,4]) //[4,1,2,3]

