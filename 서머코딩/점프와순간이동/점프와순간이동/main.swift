//
//  main.swift
//  점프와순간이동
//
//  Created by CHOMINJI on 2020/01/17.
//  Copyright © 2020 cmindy. All rights reserved.
//

import Foundation

//https://programmers.co.kr/learn/courses/30/lessons/12980

func solution(_ n:Int) -> Int {
    var ans: Int = 1
    var n = n
    while n != 1 {
        if n % 2 == 1 {
            n -= 1
            ans += 1
        } else {
            n /= 2
        }
    }
    print("ans: \(ans)")
    return ans
}

solution(5) //2
solution(6) //2
solution(5000) //5
