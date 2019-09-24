#include <iostream>
#include <vector>
#include <cstring>
using namespace std;

int n;
vector<pair<pair<int, int>, int>> vec;

int main() {
    scanf("%d", &n);
    int weight, height;
    for (int i = 0; i < n; i++) {
        scanf("%d %d", &weight, &height);
        
        vec.push_back(make_pair(make_pair(weight, height), 1));
    }
    
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            if (i == j) {
                continue;
            } else if (vec[i].first.first < vec[j].first.first && vec[i].first.second < vec[j].first.second) {
                vec[i].second++;
            }
        }
    }
    
    for (int i = 0; i < n; i++) {
        printf("%d ", vec[i].second);
    }
    
    return 0;
}
//////
int n;
vector<pair<int, int>> vec;
vector<int> ranking;

int main() {
    scanf("%d", &n);
    int weight, height;
    for (int i = 0; i < n; i++) {
        scanf("%d %d", &weight, &height);
        
        vec.push_back(make_pair(weight, height));
    }
    ranking.resize(n, 1);
    
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            if (i == j) {
                continue;
            } else if (vec[i].first < vec[j].first && vec[i].second < vec[j].second) {
                ranking[i]++;
            }
        }
    }
    
    // vec[i].first.first : 몸무게
    // vec[i].first.second: 키
    // vec[i].second: 등수
    
    for (int i = 0; i < n; i++) {
        printf("%d ", ranking[i]);
    }
    
    return 0;
}
