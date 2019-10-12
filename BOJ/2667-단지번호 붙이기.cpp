// 실패
#include <iostream>
#include <cstring>
#include <queue>
#include <functional>
#include <vector>
using namespace std;

const int MAX = 26;
int n;
int cnt = 1;
int adjacent[MAX][MAX] = { 0 };
int visited[MAX][MAX] = { 0 };
int dx[4] = { -1, 0, 1, 0 };
int dy[4] = { 0, 1, 0, -1 };
priority_queue<int, vector<int>, greater<int> > pq;


void dfs(int x, int y) {
    visited[x][y] = 1;
    for (int i = 0; i < 4; i++) {
        int newX = x + dx[i];
        int newY = y + dy[i];
        
        if (adjacent[newX][newY] && !visited[newX][newY]) {
            cnt++;
            dfs(newX, newY);
        }
    }
}

void dfsAll() {
    for (int i = 0; i <= n; i++) {
        for (int j = 0; j <= n; j++) {
            if (!visited[i][j] && adjacent[i][j]) {
                cnt = 1;
                dfs(i, j);
                pq.push(cnt);
            }
        }
    }
}

int main() {
    cin >> n;
    for (int i = 1; i <= n; i++) {
        for (int j = 1; j <= n; j++) {
            scanf("%1d", &adjacent[i][j]);
        }
    }
    dfsAll();
    cout << pq.size() << endl;
    while (!pq.empty()) {
        cout << pq.top() << endl;
        pq.pop();
    }
    return 0;
}

/*
 7
 0110100
 0110101
 1110101
 0000111
 0100000
 0111110
 0111000
 */
