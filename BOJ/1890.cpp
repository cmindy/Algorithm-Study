#include <cstdio>
#include <cstring>
#include <algorithm>
using namespace std;


/*
 D[i][j] = (i,j) 까지 갈 수 있는 경로의 수
 (i,j) -> (i, A[i][j] + j)
 -> (i + A[i][j], j)
 
 D[i][A[i][j]+j] += D[i][j]
 D[i + A[i][j] += D[i][j]
 */


int a[100][100];
int d[100][100];

int main() {
    int n;
    scanf("%d", &n);
    
    for (int i=0; i<n; i++) {
        for (int j=0; j<n; j++) {
            scanf("%d", &a[i][j]);
        }
    }
    
    d[0][0] = 1;
    for (int i=0; i<n; i++) {
        for (int j=0; j<n; j++) {
            if (a[i][j] == 0) continue;
            
            if (j+a[i][j] < n) {
                d[i][j+a[i][j]] += d[i][j];
            }
            
            if (i+a[i][j] < n) {
                d[i+a[i][j]][j] += d[i][j];
            }
        }
    }
    printf("%d\n", d[n-1][n-1]);
    return 0;
}