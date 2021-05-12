// This program demonstrates the usage of namespaces.

#include <iostream>
#include <string>

// two namespaces for variables only.
namespace intValues {
	int a = 5;
}
namespace doubleValues {
	double a = 1.25;
}

// two namespaces for functions.
namespace math_functions {
	int a = 5, b = 3;

	int sum()
	{
		return a+b;
	}
}
namespace string_concatenation {
	std::string a = "Hello", b = " there.";
	std::string sum()
	{
		return a+b;
	}
}

int main()
{
	std::cout << "Namespace for values:\n" << "intValues::a " << intValues::a << "\n";
	std::cout << "doubleValues::a " << doubleValues::a << "\n";
	
	std::cout << "Namespace for functions:\n" << "math_functions::sum() " << math_functions::sum() << "\n";
	std::cout << "string_concatenation::sum() " << string_concatenation::sum() << "\n";
	return 0;
}
