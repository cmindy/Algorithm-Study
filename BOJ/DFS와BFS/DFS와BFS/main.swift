//
//  main.swift
//  DFS와BFS
//
//  Created by CHOMINJI on 2020/01/29.
//  Copyright © 2020 cmindy. All rights reserved.
//

import Foundation

let prompt = readLine()!
let nmv = prompt.components(separatedBy: " ").map { Int($0)! }
let n = nmv[0]
let m = nmv[1]
let v = nmv[2]

var edgeInfo = [Int: [Int]]()
for _ in 0..<m {
    let edge = readLine()!.components(separatedBy: " ").map { Int($0)! }
    edgeInfo[edge[0], default: []].append(edge[1])
    edgeInfo[edge[1], default: []].append(edge[0])
    edgeInfo[edge[0]]?.sort()
    edgeInfo[edge[1]]?.sort()
}

func runDFS(n: Int, v startNode: Int) {
    var visited = [v]
    
    func dfs(node: Int) {
        if visited.count >= n {
            return
        }
        
        guard let neighbors = edgeInfo[node] else { return }
        
        for node in neighbors {
            if visited.contains(node) {
                continue
            } else {
                visited += [node]
                dfs(node: node)
            }
        }
    }
    
    dfs(node: v)
    print(visited.map { String($0) }.joined(separator: " "))
}

runDFS(n: n, v: v)

func runBFS() {
    var visited = [v]
    var queue = [Int]()
    queue.append(v)
    
    func bfs(node: Int) {
        
        while !queue.isEmpty {
            let source = queue.removeFirst()
            
            guard let neighbors = edgeInfo[source] else {
                return
            }
            
            for vertex in neighbors {
                if visited.contains(vertex) {
                    continue
                } else {
                    queue.append(vertex)
                    visited.append(vertex)
                }
            }
        }
    }
    
    bfs(node: v)
    print(visited.map { String($0) }.joined(separator: " "))
}

runBFS()
