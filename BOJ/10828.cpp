#include <iostream>
#include <stack>
#include <string>
using namespace std;

int main() {
    int n;
    cin >> n;
    
    stack<int> stack;
    
    while (n--) {
        string cmd;
        cin >> cmd;
        if (cmd == "push") {
            int num;
            cin >> num;
            stack.push(num);
        } else if (cmd == "top") {
            cout << (stack.empty() ? -1 : stack.top()) << endl;
        } else if (cmd == "size") {
            cout << stack.size() << endl;
        } else if (cmd == "empty") {
            cout << stack.empty() << endl;
        } else if (cmd == "pop") {
            cout << (stack.empty() ? -1 : stack.top()) << endl;
            if (!stack.empty()) {
                stack.pop();
            }
        }
    }
    return 0;
}