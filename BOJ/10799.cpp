#include <iostream>
#include <string>
#include <stack>
using namespace std;

int main() {
    string s;
    cin >> s;
    int n = s.size();
    
    stack<int> stack;
    int answer = 0;
    
    for (int i = 0; i < n; i++) {
        if (s[i] == '(') {
            stack.push(i);
        } else {
            if (stack.top()+1 == i) {
                stack.pop();
                answer += stack.size();
            } else {
                stack.pop();
                answer += 1;
            }
        }
    }
    
    cout << answer << endl;
    return 0;
}