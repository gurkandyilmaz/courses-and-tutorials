// This program demonstrates the usage of function templates
// maximum_template.h file will be used as the template header

#include <iostream>
#include "maximum_template.h"


int main()
{
	int x = 5, y = 10, z = 2;
	double a = 1.256, b = 3.478, c = 8.741;
	char p = 'A', q = 'E', r = 'Z';

	std::cout << "The maximum of ("<< x << "," << y << "," << z << ") is: " << maximum(x,y,z) << std::endl;
	std::cout << "The maximum of ("<< a << "," << b << "," << c << ") is: " << maximum(a,b,c) << std::endl;
	std::cout << "The maximum of ("<< p << "," << q << "," << r << ") is: " << maximum(p,q,r) << std::endl;
}
