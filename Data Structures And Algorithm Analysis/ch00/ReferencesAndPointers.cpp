// This program demonstrates the usage of references and pointers in C++

#include <iostream>
using namespace std;

void swapValues(int &, int &); // Call by Reference example
void incrementValues(int * value, int increment); // pointers example
// void printValues(const int * start); // pointers to constant values example

int main()
{
	int x = 10, y = 5;

	cout << "(x): " << x << ". The address of (x): " << &x << "\n";
	cout << "(y): " << y << ". The address of (y): " << &y << "\n";

	swapValues(x, y);

	cout << "After Calling the swapValues(x,y)" << "\n";
	cout << "(x): " << x << ". The address of (x): " << &x << "\n";
	cout << "(y): " << y << ". The address of (y): " << &y << "\n";

	incrementValues(&x, 7);
	incrementValues(&y, 18);
	cout << "After Calling incrementValues() on x and y: " << "\n";
	cout << "(x): " << x << ". The address of (x): " << &x << "\n";
	cout << "(y): " << y << ". The address of (y): " << &y << "\n";
}

void swapValues(int & a, int & b)
{ 
	int tmp;

	cout << "Inside the function address of the first variable: " << &a << endl;
	cout << "Inside the function address of the second variable: " << &b << endl;
	
	tmp = a;
	a = b;
	b = tmp;
}

void incrementValues(int * number, int step)
{
	*number += step;
}
