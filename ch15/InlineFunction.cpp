// A program that demonstrates the usage of inline functions in calculating the volume of a cube

#include <iostream>
using std::cout;
using std::cin;
using std::endl;


// function definition appears before the function call so prototype is not requried
inline double cube(const double side)
{
	return side*side*side;
}

int main()
{
	double sideValue;

	for (int i = 1; i <= 3; i++)
	{
		cout << "\nEnter the side length of the cube: ";
		cin >> sideValue;

		cout << "Side lenght: " << sideValue << " Volume: " << cube(sideValue) << endl;
	}
}
