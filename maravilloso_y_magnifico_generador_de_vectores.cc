#include <iostream>
#include <random>
#include <vector>

using namespace std;

#define SIZE 10

int main(int argc, char *argv[]) {
    int quantity = 1;
    int elements = SIZE;

    if (argc > 1)
        quantity = atoi(argv[1]);
        
    if (argc > 2)
        elements = atoi(argv[2]);

    cout << elements << endl << endl;
    
    for (int i = 0; i < quantity; ++i) { 
        int a[elements];
        
        for (int i = 0; i < elements; i++)
            a[i] = i;

        for (int i = 0; i < elements; i++)
            swap(a[i], a[srand() % elements]);
        for (int i = 0; i < elements; ++i) {
            cout << a[i] << ' ';
        }
        cout << endl << endl << endl << endl << endl << endl << endl << endl;
    }
}


