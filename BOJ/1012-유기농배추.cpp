#include <iostream>
#include <cstring>
using namespace std;
int numOfTestCase;
int n, m, numOfLocation;
int adj[51][51];
int dx[4] = { -1, 0, 1, 0 };
int dy[4] = { 0, -1, 0, 1 };

void dfs(int x, int y) {
    adj[x][y] = 0;
    for (int i = 0; i < 4; i++) {
        int newX = x + dx[i];
        int newY = y + dy[i];
        
        if (adj[newX][newY]) {
            dfs(newX, newY);
        }
    }
}

int main() {
    scanf("%d", &numOfTestCase);
    while (numOfTestCase--) {
        int answer = 0;
        memset(adj, 0, sizeof(adj));
        scanf("%d %d %d", &m, &n, &numOfLocation);
        
        for (int j = 0; j < numOfLocation; j++) {
            int x, y;
            scanf("%d %d", &x, &y);
            adj[++x][++y] = 1;
        }
        for (int i = 1; i <= m; i++) {
            for (int j = 1; j <= n; j++) {
                if (adj[i][j]) {
                    answer++;
                    dfs(i, j);
                }
            }
        }
        printf("%d\n", answer);
    }
    return 0;
}
