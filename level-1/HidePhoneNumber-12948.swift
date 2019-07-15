//
//  HidePhoneNumber.swift
//  Algoshipda
//
//  Created by CHOMINJI on 15/07/2019.
//  Copyright © 2019 cmindy. All rights reserved.
//

import Foundation

// https://programmers.co.kr/learn/courses/30/lessons/12948

func solution(_ phone_number:String) -> String {
    let prefix = String(repeating: "*", count: phone_number.count - 4)
    let suffix = phone_number.suffix(4)
    return "\(prefix)\(suffix)"
}
