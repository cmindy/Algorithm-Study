
#include <string>
#include <vector>
#include <cstring>
#include <algorithm>
#include <iostream>

using namespace std;
int answer, sum = 0;
int arrIndex = 0;

void dfs(vector<int> numbers, int target, int sum, int arrIndex) {
    if (arrIndex >= numbers.size()) {
        if (sum == target) {
            answer++;
        }
        return;
    }
    dfs(numbers, target, sum+numbers[arrIndex], arrIndex+1);
    dfs(numbers, target, sum-numbers[arrIndex], arrIndex+1);
}

int solution(vector<int> numbers, int target) {
    
    dfs(numbers, target, numbers[0], 1);
    dfs(numbers, target, numbers[0]*-1, 1);
    
    return answer;
}
