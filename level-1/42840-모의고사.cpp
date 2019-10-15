#include <string>
#include <vector>
#include <algorithm>
#include <iostream>

using namespace std;

bool desc(int a, int b){
    return a > b;
}

vector<int> solution(vector<int> answers) {
    vector<int> answer;
    vector<int> supo1 = { 1, 2, 3, 4, 5 };
    vector<int> supo2 = { 2, 1, 2, 3, 2, 4, 2, 5 };
    vector<int> supo3 = {  3, 3, 1, 1, 2, 2, 4, 4, 5, 5 };
    
    int size1 = 5;
    int size2 = 8;
    int size3 = 10;
    
    int score1 = 0; 
    int score2 = 0;
    int score3 = 0;
    
    for (int i = 0; i < answers.size(); i++) {
        if (supo1[i % size1] == answers[i]) {
            score1++;
        }
        if (supo2[i % size2] == answers[i]) {
            score2++;
        } 
        if (supo3[i % size3] == answers[i]) {
            score3++;
        }
    }
    
    vector<pair <int, int>> score = { make_pair(score1, 1), make_pair(score2, 2), make_pair(score3, 3) };
    sort(score.begin(), score.end());
    int max = score.back().first;

    for (int i = 0; i < score.size(); i++) {
        if (max == score[i].first) {
            answer.push_back(score[i].second);
        }
    }
    return answer;
}

