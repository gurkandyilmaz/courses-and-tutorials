// This program demonstrates the usage of function templates
// maximum_template.h file will be used as the template header

#include <iostream>
#include "maximum_template.h"


int main()
{
	int x, y, z;
	double a, b, c;
	char p, q, r;

	std::cout << "Enter 3 integers separeted by space: " << std::endl;
	std::cin >> x >> y >> z;
	std::cout << "The maximum of ("<< x << "," << y << "," << z << ") is: " << maximum(x,y,z) << std::endl;
	
	std::cout << "Enter 3 floating point numbers separeted by space: " << std::endl;
	std::cin >> a >> b >> c;
	std::cout << "The maximum of ("<< a << "," << b << "," << c << ") is: " << maximum(a,b,c) << std::endl;
	
	std::cout << "Enter 3 characters separeted by space: " << std::endl;
	std::cin >> p >> q >> r;
	std::cout << "The maximum of ("<< p << "," << q << "," << r << ") is: " << maximum(p,q,r) << std::endl;
}
