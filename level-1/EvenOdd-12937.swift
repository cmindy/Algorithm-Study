//
//  EvenOdd-12937.swift
//  
//
//  Created by CHOMINJI on 11/07/2019.
//

import Foundation

// https://programmers.co.kr/learn/courses/30/lessons/12937

func solution(_ num:Int) -> String {
    let condition = num % 2 == 0
    return condition ? "Even" : "Odd"
}
