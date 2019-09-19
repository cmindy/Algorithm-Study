
#include <iostream>
#include <cstdio>
#include <cstring>
#include <vector>
#include <queue>
using namespace std;

int adj[1001][1001];
bool visited[1001];
queue<int> q;

int n, m, start;
void dfs(int here) {
    
    cout << here << " ";

    for (int i = 1; i <= n; i++) {
        if (adj[here][i] && !visited[i]) {
            visited[i] = true;
            dfs(i);
        }
    }
    // 더이상 방문할 정점이 없음. 재귀호출을 종료하고 이전 정점으로 돌아간다.
}

void bfs(int here) {
    q.push(here);
    visited[here] = true;
    
    while (!q.empty()) {
        here = q.front();
        q.pop();
        
        cout << here << " ";
        
        for (int i = 1; i <= n; i++) {
            if (adj[here][i] && !visited[i]) {
                visited[i] = true;
                q.push(i);
            }
        }
    }
}

int main() {
    cin >> n >> m >> start;
    int u, v;
    for (int i = 0; i < m; i++) {
        cin >> u >> v;
        adj[u][v] = adj[v][u] = 1;
    }
    
    visited[start] = 1;
    dfs(start);
    cout << "\n";

    memset(visited, 0, sizeof(visited));
    bfs(start);
    cout << "\n";
    
    return 0;
}




