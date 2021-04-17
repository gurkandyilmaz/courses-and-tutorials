// This program demonstrates the function overloading capability
// Similar functions are of the same name can be defined by function overloading

#include <iostream>

int square(int number)
{
	std::cout << "The int square of " << number << " is: "; 
	return number*number;
}

double square(double number)
{
	std::cout << "The int square of " << number<< " is: "; 
	return number*number;
}

int main()
{
	int x = 5;
	double y = 2.5;

	std::cout << square(x) << std::endl;
	std::cout << square(y) << std::endl;

}
