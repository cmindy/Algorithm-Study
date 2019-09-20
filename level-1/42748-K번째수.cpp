#include <string>
#include <vector>
#include <cstring>
#include <algorithm>
#include <iostream>

using namespace std;

vector<int> solution(vector<int> array, vector<vector<int>> commands) {
    vector<int> answer;

    int start, end, k = 0;
    for (vector<int> vec : commands) {
        vector<int> temp;
        start = vec[0];
        end = vec[1];
        k = vec[2];

        start = start-1;
        end = end-1;
        k = k-1;
        for (int i = start; i <= end; i++) {
//            cout << "start " << start;
            temp.push_back(array[i]);
        }
        sort(temp.begin(), temp.end());
        cout  <<temp[k];

        answer.push_back(temp[k]);
    }

    return answer;
}
