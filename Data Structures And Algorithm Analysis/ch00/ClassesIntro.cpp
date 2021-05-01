// This program demonstrates how one can create simple classes and instantiate them.

#include <iostream>

class Rectangle {
		int width, height; // private members.
	public:
		Rectangle(): width {1}, height {1}{} // default constructor sets width and height to 1.
		Rectangle(int w, int h): width {w}, height {h} {}
		double area();
		double perimeter();

};


double Rectangle::area()
{
	return width*height;
}

double Rectangle::perimeter()
{
	return 2*(height + width);
}

int main()
{
	Rectangle rectangleA {3,5};
	Rectangle rectangleB; // Uses default constructor

	std::cout << "Rectangle A area: " << rectangleA.area() << '\n';
	std::cout << "Rectangle A perimeter: " << rectangleA.perimeter() << '\n';

	std::cout << "Rectangle B area: " << rectangleB.area() << '\n';
	std::cout << "Rectangle B perimeter: " << rectangleB.perimeter() << '\n';

	return 0;
}
