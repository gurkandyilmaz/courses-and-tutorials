// This program demonstrates the two methods of function calls namely
// pass-by-value and pass-by-reference

#include <iostream>

int SquareByValue(int ); // does not modify the caller's value
int SquareByReference(int &); // modifies the caller's value

int main()
{
	int x = 2;
	int z = 3;

	std::cout << "The number before SquareByValue is: " << x << std::endl;
	std::cout << "SquareByValue is: " << SquareByValue(x) << std::endl;
	std::cout << "The number after SquareByValue is: " << x << std::endl;

	std::cout << "\n\n" << std::endl;

	std::cout << "The number before SquareByReference is: " << z << std::endl;
	std::cout << "SquareByReference is: " << SquareByReference(z) << std::endl;
	std::cout << "The number after SquareByReference is: " << z << std::endl;

}

int SquareByValue(int number_value)
{
	number_value *= number_value;
	return number_value;
}

int SquareByReference(int &number_reference) // &number_reference is the address
{
	number_reference *= number_reference;
	return number_reference;
}

