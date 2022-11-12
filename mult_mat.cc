#include <iostream>
#include <vector>
#include <chrono>
using namespace std;
using namespace chrono;

typedef vector<int> fila;
typedef vector<fila> matriu;

matriu mult(const matriu& N, const matriu& M) {
	int n = N.size();
	int m = M[0].size();
	matriu R(n, fila(m));
	for (int i = 0; i < n; ++i) {
		for (int j = 0; j < m; ++j) {
			R[i][j] = 0;
			for (int k = 0; k < M.size(); ++k)
				R[i][j] += N[i][k] * M[k][j];
		}
	}
	return R;
}

int main() {
	auto begin = high_resolution_clock::now();

	int n; cin >> n;
	matriu N1(n, fila(n));
	for (int i = 0; i < n; ++i)
		for (int j = 0; j < n; ++j) cin >> N1[i][j];
	
	matriu N2(n, fila(n));
	for (int i = 0; i < n; ++i)
		for (int j = 0; j < n; ++j) cin >> N2[i][j];

	matriu M = mult(N1, N2);
	for (int i = 0; i < n; ++i) {
		for (int j = 0; j < n; ++j) cout << M[i][j] << ' ';
		cout << endl;
	}

	auto end = high_resolution_clock::now();
	auto diff = duration_cast<microseconds>(end-begin);
	cout << "Time: " << diff.count() << endl;
}
