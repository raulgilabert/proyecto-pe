# proyecto-pe
Para medir el tiempo hemos usado la libreria chrono. El metodo es el siguiente

```cc
	#include <chrono>
	using namespace std;
	using namespace chrono;
	int main() {
		auto begin = high_resolution_clock::now();
		//programa
		auto end = high_resolution_clock::now();
		auto diff = duration_cast<microseconds>(end-begin);
		cout << "Time: " << diff.count() << endl;
	}
```
