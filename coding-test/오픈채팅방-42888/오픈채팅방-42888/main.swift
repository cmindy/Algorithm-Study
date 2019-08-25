//
//  main.swift
//  오픈채팅방-42888
//
//  Created by CHOMINJI on 25/08/2019.
//  Copyright © 2019 cmindy. All rights reserved.
//

import Foundation

// https://programmers.co.kr/learn/courses/30/lessons/42888

//채팅방에서 닉네임을 변경하는 방법은 다음과 같이 두 가지이다.
//채팅방을 나간 후, 새로운 닉네임으로 다시 들어간다.
//채팅방에서 닉네임을 변경한다.
//닉네임을 변경할 때는 기존에 채팅방에 출력되어 있던 메시지의 닉네임도 전부 변경된다.


func solution(_ record:[String]) -> [String] {
    let temp = record.map { $0.split(separator: " ").map { String($0) } }
    
    var commands = [String]()
    var ids = [String]()
    var nickNameTable: [String: String] = [:]

    for line in temp {
        commands.append(line[0])
        ids.append(line[1])
        if line.count > 2 {
            nickNameTable[line[1]] = line[2]
        }
    }
    let zipped = zip(commands, ids)
        .compactMap { Command.init(rawValue: $0.0)?.format(nickNameTable[$0.1]!) }
    
    return zipped
}

enum Command: String {
    case enter = "Enter"
    case leave = "Leave"
    case change = "Change"
    
    var format: (String) -> String? {
        switch self {
        case .enter:
            return { "\($0)님이 들어왔습니다."}
        case .leave:
            return { "\($0)님이 나갔습니다." }
        default:
            return { _ in return nil }
        }
    }
}

solution([
    "Enter uid1234 Muzi",
    "Enter uid4567 Prodo",
    "Leave uid1234",
    "Enter uid1234 Prodo",
    "Change uid4567 Ryan"
    ])
//["Prodo님이 들어왔습니다.", "Ryan님이 들어왔습니다.", "Prodo님이 나갔습니다.", "Prodo님이 들어왔습니다."]
