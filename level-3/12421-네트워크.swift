var visited = [Bool]()
var map = [[Int]]()

func dfs(_ computers:[[Int]], _ here: Int) {
    visited[here] = true
    for i in 0..<computers[here].count {
        let there = computers[here][i]
        if !visited[i] && there == 1 {
            dfs(computers, i)
        }
    }
}

func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    var answer = 0
    map.append(contentsOf: Array(repeating: Array(repeating: 0, count: n), count: n))
    visited = Array(repeating: false, count: n)
    for i in 0..<n {
        for computer in 0..<computers.count {
            if i == computer {
                continue
            }
            map[i][computer] = computers[i][computer]
        }
    }
    
    
    for i in 0..<n {
        if !visited[i] {
            dfs(computers, i)
            answer += 1
        }
    }
    
    return answer
}

//solution(3, [[1, 1, 0], [1, 1, 0], [0, 0, 1]]) //2
solution(3, [[1, 1, 0], [1, 1, 1], [0, 1, 1]]) //1
