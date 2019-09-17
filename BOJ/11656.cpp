#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

int main() {
    string s;
    cin >> s;
    int n = s.size();
    vector<string> v;
    
    for (int i=0; i<n; i++) {
        v.push_back(s.substr(i, s.length()));
    }
    sort(v.begin(), v.end());
    for (auto &x : v) {
        cout << x << endl;
    }
    return 0;
}
