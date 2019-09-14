#include <iostream>
#include <queue>
using namespace std;

int main() {
    int n, k;
    cin >> n;
    cin >> k;
    queue<int> queue;
    
    /// 큐 초기화
    for (int i=1; i<=n; i++) {
        queue.push(i);
    }
    
    cout << "<";
    
    for (int i=0; i<n-1; i++) {
        for (int j=0; j<k-1; j++) {
            queue.push(queue.front());
            queue.pop();
        }
        cout << queue.front() << ", ";
        queue.pop();
    }
    printf("%d>", queue.front());

    return 0; 
}
