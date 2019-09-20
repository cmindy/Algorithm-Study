#include <string>
#include <vector>

using namespace std;
int answer = 0;
bool visited[201];

void dfs(vector<vector<int> > computers, int here) {
    visited[here] = true;
    for (int i = 0; i < computers[here].size(); i++) {
        int there = computers[here][i];
        if (!visited[i] && there == 1) {
            dfs(computers, i);
        }
    }
}

int solution(int n, vector<vector<int>> computers) {
    
    for (int i = 0; i < n; i++) {
            computers[i][i] = 0;
    }
    
    for (int i = 0; i < n; i++) {
        if (!visited[i]) {
            dfs(computers, i);
            answer++;
        }
    }
    
    return answer;
}