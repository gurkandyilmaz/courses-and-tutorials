// This program demonstrates the usage of references


#include <iostream>

void swap_by_copy(double &, double &);
void swap_by_move(double &, double &);

int main()
{
	double a=5.0, b=10.0;

	std::cout << "Original values --> a:" << a << ",b:" << b << std::endl;
	std::cout << "Swap by copy: ";
	swap_by_copy(a,b);
	std::cout << "a: " << a << " b: " << b << std::endl;
	std::cout << "Swap by move: ";
	swap_by_move(a,b);
	std::cout << "a: " << a << " b: " << b << std::endl;
}

// Makes three copies
void swap_by_copy(double & x, double & y)
{
	double tmp = x;
	x = y;
	y = tmp;
}

void swap_by_move(double & x, double & y)
{
	double tmp = std::move(x);
	x = std::move(y);
	y = std::move(tmp);
}
