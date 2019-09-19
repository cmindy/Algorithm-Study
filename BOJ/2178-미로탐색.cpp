
#include <iostream>
#include <cstring>
#include <queue>
using namespace std;

int n, m;
int ans;
int adj[101][101] = { 0 };
int dx[4] = { -1, 0, 1, 0 };
int dy[4] = { 0, -1, 0, 1 };
queue<pair<int, int> > q;

void bfs() {
    q.push(make_pair(1, 1));
    
    while (!q.empty()) {
        int currentX = q.front().first;
        int currentY = q.front().second;
        q.pop();
        
        for (int i = 0; i < 4; i++) {
            int newX = currentX + dx[i];
            int newY = currentY + dy[i];
            
            if (adj[newX][newY] == 1) {
                q.push(pair<int, int>(newX, newY));
                adj[newX][newY] = adj[currentX][currentY] + 1;
            }
        }
    }
}

int main() {
    cin >> n >> m;
    
    for (int i = 1; i <= n; i++) {
        for (int j = 1; j <= m; j++) {
            scanf("%1d", &adj[i][j]);
        }
    }
    bfs();
    
    cout << adj[n][m];
    
    return 0;
}

/**
 4 6
 101111
 101010
 101011
 111011
 **/
