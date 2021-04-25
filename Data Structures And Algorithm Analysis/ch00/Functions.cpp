// Implementing functions in C++

#include <iostream>
#include <cmath>
#include <math.h>
#include <ostream>

double power_recursive(double, double);
double power_iterative_for(double, double);
double power_iterative_while(double, double);
void print_powers(double, double);

int main()
{
	double base_num, power;

	std::cout << "Enter the base number: ";
	std::cin >> base_num;
	std::cout << "Enter the exponent: ";
	std::cin >> power;
	std::cout << "The built-in pow(base,power): " << pow(base_num, power) << std::endl;
	std::cout << "The custom power_recursive(base,power): " << power_recursive(base_num, power) << std::endl;
	std::cout << "The custom power_iterative_for(base,power): " << power_iterative_for(base_num, power) << std::endl;
	std::cout << "The custom power_iterative_while(base,power): " << power_iterative_while(base_num, power) << std::endl;

}

double power_recursive(double base, double exponent)
{
	if ( exponent == 0 && base != 0)
	{
		return 1;
	}
	
	else if ( exponent == 1)
	{
		return base;
	}
	else
	{
		return base * power_recursive(base, exponent-1);
	}
}

double power_iterative_for(double base, double exponent)
{
	double result = 1;
	
	print_powers(base,exponent);

	for(int i = 0; i < exponent; ++i)
	{
		result *= base;
	}
	std::cout << result << std::endl;
	return result;
}

double power_iterative_while(double base, double exponent)
{
	double result = 1;

	print_powers(base,exponent);
	
	while(exponent >= 1)
	{
		result *= base;
		--exponent;
	}
	std::cout << result << std::endl;
	return result;
}

void print_powers(double base, double exponent)
{
	while(exponent >= 1)
	{
		if (exponent == 1)
		{
			std::cout << base << "=";
		}
		else
		{
			std::cout << base << "*";
		}
		--exponent;
	}
}
