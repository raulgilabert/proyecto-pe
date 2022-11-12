#include <iostream>
#include <vector>
#include <chrono>
using namespace std;
using namespace chrono;
 
// Binary search (note boundaries in the caller)
int CeilIndex(vector<int>& v, int l, int r, int key)
{
    while (r - l > 1) {
        int m = l + (r - l) / 2;
        if (v[m] >= key)
            r = m;
        else
            l = m;
    }
 
    return r;
}
 
int LongestIncreasingSubsequenceLength(vector<int>& v)
{
    if (v.size() == 0)
        return 0;
 
    vector<int> tail(v.size(), 0);
    int length = 1; // always points empty slot in tail
 
    tail[0] = v[0];
    for (unsigned int i = 1; i < v.size(); i++) {
 
        // new smallest value
        if (v[i] < tail[0])
            tail[0] = v[i];
 
        // v[i] extends largest subsequence
        else if (v[i] > tail[length - 1])
            tail[length++] = v[i];
 
        // v[i] will become end candidate of an existing
        // subsequence or Throw away larger elements in all
        // LIS, to make room for upcoming greater elements
        // than v[i] (and also, v[i] would have already
        // appeared in one of LIS, identify the location
        // and replace it)
        else
            tail[CeilIndex(tail, -1, length - 1, v[i])] = v[i];
    }
 
    return length;
}

int main() {
	auto begin = high_resolution_clock::now();
	
	int n; cin >> n;
	vector<int> v(n);
	for (int i = 0; i < n; ++i) cin >> v[i];
	cout << "Length of Longest Increasing Subsequence is " << LongestIncreasingSubsequenceLength(v) << endl;

	auto end = high_resolution_clock::now();
	auto diff = duration_cast<microseconds>(end-begin);
	cout << "Time: " << diff.count() << endl;
}
