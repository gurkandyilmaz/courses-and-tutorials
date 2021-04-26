// This program demonstrates the usage of function templates.

#include <iostream>

template <typename T> // the same as template <class T>
T sum(T a, T b) // T will be a generic type like int, double etc.
{
	T result;
	result = a + b;
	return result;
}


int main()
{
	int x = 5, y = 8;
	double z = 2.25, t = 1.25;

	std::cout << "sum<int>(5,8): " << sum<int>(x,y) << "\n";
	std::cout << "sum<double>(2.25, 1.25): " << sum<double>(z,t) << "\n";

	std::cout << "Alternatively, type can be determined automatically:\n";
	std::cout << "sum(5,8): " << sum(x,y) << "\n";
	std::cout << "sum(2.25, 1.25): " << sum(z,t) << "\n";

	return 0;
}
