// cin 사용시 시간 초과 //     cin.tie(0); 
#include <iostream>
#include <cstring>
#include <algorithm>
#include <vector>
using namespace std;

const int MAX = 100001;
int n, m;
int arr[MAX];
vector<int> list;

int binarySearch(int start, int end, int target) {
    if (start > end) {
        return 0;
    } else {
        int mid = (start + end) / 2;
        if (target == list[mid]) {
            return 1;
        } else if (target < list[mid]) {
            return binarySearch(start, mid-1, target);
        } else {
            return binarySearch(mid+1, end, target);
        }
    }
}

int main() {
    cin >> n;
    for (int i = 0; i < n; i++) {
        int num;
        scanf("%d", &num);
        list.push_back(num);
    }
    sort(list.begin(), list.end());
    
    cin >> m;
    for (int i = 0; i < m; i++) {
        int target;
        scanf("%d", &target);
        cout << binarySearch(0, n-1, target) << "\n";
    }
    return 0;
}

/*
 5
 4 1 5 2 3
 5
 1 3 7 9 5
 */
