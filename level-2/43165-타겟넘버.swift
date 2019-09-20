var count = 0
func dfs(_ numbers:[Int], _ target: Int, _ sum: Int, _ arrIndex: Int)  {
    if arrIndex >= numbers.count {
        if sum == target {
            count += 1
        }
        return
    }
    dfs(numbers, target, sum+numbers[arrIndex], arrIndex+1)
    dfs(numbers, target, sum-numbers[arrIndex], arrIndex+1)
}

func solution(_ numbers:[Int], _ target:Int) -> Int {
    dfs(numbers, target, numbers[0], 1)
    dfs(numbers, target, -numbers[0], 1)
    return count
}

solution([1,1,1,1,1], 3)