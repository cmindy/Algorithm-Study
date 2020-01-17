//
//  main.swift
//  방문길이
//
//  Created by CHOMINJI on 2020/01/17.
//  Copyright © 2020 cmindy. All rights reserved.
//

import Foundation

// https://programmers.co.kr/learn/courses/30/lessons/49994
enum Command: String {
    case up = "U"
    case down = "D"
    case left = "L"
    case right = "R"
}

extension Command {
    func coordinates(_ coordinate: Coordinate) -> Coordinate {
        var coordinate = coordinate
        switch self {
        case .up:
            coordinate.y += 1
        case .down:
            coordinate.y -= 1
        case .left:
            coordinate.x -= 1
        case .right:
            coordinate.x += 1
        }
        return coordinate
    }
}

struct Coordinate {
    var x: Int = 0
    var y: Int = 0
}

func solution(_ dirs:String) -> Int {
    let commands = dirs.compactMap { Command(rawValue: $0.description) }
        .map { $0.coordinates(Coordinate()) }
    return 0
}

// 처음 걸어본 길의 거리
solution("ULURRDLLU") // 7
solution("LULLLLLLU") // 7
