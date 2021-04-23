// This program demonstrates the usage of references and pointers in C++

#include <iostream>
using namespace std;

void swapValues(int &, int &);

int main()
{
	int x = 10, y = 5;

	cout << "(x): " << x << ". The address of (x): " << &x << endl;
	cout << "(y): " << y << ". The address of (y): " << &y << endl;

	swapValues(x, y);

	cout << "After Calling the swapValues(x,y)" << endl;
	cout << "(x): " << x << ". The address of (x): " << &x << endl;
	cout << "(y): " << y << ". The address of (y): " << &y << endl;
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
