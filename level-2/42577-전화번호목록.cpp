#include <iostream>
#include <string>
#include <vector>
#include <algorithm>

using namespace std;

bool solution(vector<string> phone_book) {
    bool answer = true;
    
    sort(phone_book.begin(), phone_book.end());
    
    // for (string phone : phone_book)  {
    //     cout << phone << '\n';
    // }
    
    int n = phone_book.size();
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            if (i == j) continue;
            string key = phone_book[i];
            if (phone_book[j].find(key) == 0 ) {
                // cout << phone_book[j] << '\n';
                answer = false;
            }
        }
    }
         return answer;
}

// https://programmers.co.kr/learn/courses/30/lessons/42577#
// 효율성 테스트 시간초과

#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include <map>

using namespace std;


bool solution(vector<string> phone_book) {
    bool answer = true;
    map<string, int> m;
    
    sort(phone_book.begin(), phone_book.end());
    
    for (string phone: phone_book) {
        ++m[phone];
    }
    
    for (auto pair : m) {
        if (pair.second > 1) {
            return false;
        }
    }
    
    int n = phone_book.size();
    for (auto keyPair: m) {
        for (auto targetPair: m) {
            if (keyPair == targetPair) continue;
            
            string key = keyPair.first;
            
            if (targetPair.first.find(key) == 0 ) {
                return false;
            }
        }
    }
         return answer;
}

// 해시 
// 효율성 통과