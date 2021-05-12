// A simple program that takes two numbers as input then adds them.

#include <iostream>

int main()
{
	int number1, number2;

	std::cout << "Enter First Integer: ";
	std::cin >> number1; // read first integer from keyboard to number1

	std::cout << "Enter Second Integer: ";
	std::cin >> number2; // read second integer from the keyboard to number2

	std::cout << "Sum: " << number1 + number2 << std::endl;

}
