#include <iostream>
#include <vector>
#include <chrono>
using namespace std;
using namespace chrono;

void swap(int& a, int& b) {
	int c = a;
	a = b;
	b = c;
}

void i_sort(vector<int>& v) {
	for (int i = 1; i < v.size(); ++i) {
		int x = v[i];
		int aux = i;
		for (int j = i-1; j >= 0; --j) {
			if (v[j] > x) {
				aux = j;
			}
		}
		for (int j = i; j > aux; --j) {
			swap(v[j], v[j-1]);
		}
	}
}

int main() {
	auto begin = high_resolution_clock::now();

	int n; cin >> n;
	vector<int> v(n);
	for (int i = 0; i < n; ++i) cin >> v[i];
	i_sort(v);
	for (int i = 0; i < n; ++i) cout << v[i] << ' ';
	cout << endl;

	auto end = high_resolution_clock::now();
	auto diff = duration_cast<microseconds>(end-begin);
	cout << "time: " << diff.count() << endl;
}
