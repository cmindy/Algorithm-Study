#include <iostream>
#include <string>
#include <stack>
using namespace std;

int main() {
    string original;
    cin >> original;
    int n;
    cin >> n;
    
    stack<char> left;
    stack<char> right;
    
    for (int i=0; i<original.size(); i++) {
        left.push(original[i]);
    }
    
    for (int i=0; i<n; i++) {
        char command;
        scanf(" %c", &command);
        
        if (command == 'L') {
            if (!left.empty()) {
                right.push(left.top());
                left.pop();
            }
        } else if (command == 'D') {
            if (!right.empty()) {
                left.push(right.top());
                right.pop();
            }
        } else if (command == 'B') {
            if (!left.empty()) {
                left.pop();
            }
        } else if (command == 'P') {
            char word;
            scanf(" %c", &word);
            left.push(word);
        }
    }
    
    while (!left.empty()) {
        right.push(left.top());
        left.pop();
    }
    
    while (!right.empty()) {
        cout << right.top();
        right.pop();
    }
    cout << endl;
    return 0; 
}
