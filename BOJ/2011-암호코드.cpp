#include <iostream>
#include <cstring>
using namespace std;

int d[5001];

int main(int argc, const char * argv[]) {
    string str;
    cin >> str;
    int n = str.size();
    str = " " + str;
    
    d[0] = 1;
    
    for (int i = 1; i <= n; i++) {
        int x = str[i] - '0';
        // 한자리 1 ~ 9
        if ( 1 <= x && x <= 9) {
            d[i] += d[i-1];
            d[i] %= 1000000;
        }
        
        if (i == 1) continue;
        
        if (str[i-1] == '0') continue;
        
        x = (str[i-1] - '0') * 10  + (str[i] - '0');
        
        // 두자리 10 ~ 26
        if (10 <= x && x <= 26) {
            d[i] += d[i-2];
            d[i] %= 1000000;
        }
    }
    
    cout << d[n] << '\n';
    return 0;
}
// https://www.acmicpc.net/problem/2011

// 25114 -> 6
// ' ''2''5''1''1''4'