#include <iostream>
#include <random>
#include <vector>

using namespace std;

#define SIZE 100000

int main() {
    int a[SIZE];
    
    for (int i = 0; i < SIZE; i++)
	a[i] = i;

    for (int i = 0; i < SIZE; i++)
        swap(a[i], a[rand() % SIZE]);

    cout << SIZE << endl << endl;

    for (int i = 0; i < SIZE; ++i) {
	cout << a[i] << ' ';
    }
    cout << endl;
}


