#include <iostream>
#include <string>
#include <queue>
using namespace std;

int main() {
    int n;
    cin >> n;
    queue<int> queue;
    
    while (n--) {
        string command;
        cin >> command;
        
        if (command == "push") {
            int value;
            cin >> value;
            queue.push(value);
        } else if (command == "pop") {
            if (queue.empty()) {
                cout << -1 << endl;
            } else {
                cout << queue.front() << endl;
                queue.pop();
            }
        } else if (command == "size") {
            cout << queue.size() << endl;
        } else if (command == "empty") {
            cout << (queue.empty() ? 1 : 0) << endl;
        } else if (command == "front") {
            if (queue.empty()) {
                cout << -1 << endl;
            } else {
                cout << queue.front() << endl;
            }
        } else if (command == "back") {
            if (queue.empty()) {
                cout << -1 << endl;
            } else {
                cout << queue.back() << endl;
            }
        }
    }
    
    return 0; 
}
