
#include <iostream>
using namespace std;

const int MAX = 101;
int n, m;
int ans = 0;
int adjacent[MAX][MAX] = { 0 };
bool visited[MAX] = { 0 };

void dfs(int here) {
    ans++;
    visited[here] = true;
    for (int i = 1; i <= n; i++) {
        if (adjacent[here][i] && !visited[i]) {
            dfs(i);
        }
    }
}

int main() {
    cin >> n >> m;
    int u, v;
    for (int i = 0; i < m; i++) {
        cin >> u >> v;
        adjacent[u][v] = adjacent[v][u] = 1;
    }
    dfs(1);
    
    cout << ans-1;
    return 0;
}