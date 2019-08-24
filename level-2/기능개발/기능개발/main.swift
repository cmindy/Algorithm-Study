//
//  main.swift
//  기능개발
//
//  Created by CHOMINJI on 25/08/2019.
//  Copyright © 2019 cmindy. All rights reserved.
//

import Foundation

// https://programmers.co.kr/learn/courses/30/lessons/42586

//또, 각 기능의 개발속도는 모두 다르기 때문에 뒤에 있는 기능이 앞에 있는 기능보다 먼저 개발될 수 있고, 이때 뒤에 있는 기능은 앞에 있는 기능이 배포될 때 함께 배포됩니다.
//먼저 배포되어야 하는 순서대로 작업의 진도가 적힌 정수 배열 progresses와 각 작업의 개발 속도가 적힌 정수 배열 speeds가 주어질 때 각 배포마다 몇 개의 기능이 배포되는지를 return 하도록 solution 함수를 완성하세요.

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    let lefts = progresses.map { 100 - $0 }
    var queue = Queue<Int>()
    var results: [Int] = []
    for (index, progress) in lefts.enumerated() {
        let value = Double(progress) / Double(speeds[index])
        queue.enqueue(Int(value.rounded(.up)))
    }
    
    myloop: while !queue.isEmpty {
        let head = queue.front!
        let arr = queue.array
        var count = 0
        for i in arr {
            if i <= head {
                queue.dequeue()
                count += 1
            } else {
                results.append(count)
                continue myloop
            }
        }
        results.append(count)
    }
    return results
}

public struct Queue<T> {
    fileprivate var array = [T]()
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var count: Int {
        return array.count
    }
    
    public mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    public mutating func dequeue() -> T? {
        if isEmpty {
            return nil
        } else {
            return array.removeFirst()
        }
    }
    
    public var front: T? {
        return array.first
    }
}

solution([93,30,55], [1,30,5])
