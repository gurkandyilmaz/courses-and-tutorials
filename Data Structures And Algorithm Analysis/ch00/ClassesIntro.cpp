// This program demonstrates how one can create simple classes and instantiate them.

#include <iostream>

class Rectangle {
		int width, height; // private members.
	public:
		Rectangle(): width {1}, height {1}{} // default constructor sets width and height to 1.
		Rectangle(int w, int h): width {w}, height {h} {}
		Rectangle operator+ (const Rectangle & other);
		double area();
		double perimeter();

};

// Overloading + operator to add two rectangles. widths and heights are added and 
// A new Rectangle object return.
Rectangle Rectangle::operator+(const Rectangle &other)
{
	Rectangle temp;
	
	temp.width = width + other.width;
	temp.height = height + other.height;
	
	return temp;
}

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
	Rectangle rectangleC;

	std::cout << "Rectangle A area: " << rectangleA.area() << '\n';
	std::cout << "Rectangle A perimeter: " << rectangleA.perimeter() << '\n';

	std::cout << "Rectangle B area: " << rectangleB.area() << '\n';
	std::cout << "Rectangle B perimeter: " << rectangleB.perimeter() << '\n';

	std::cout << "----Demonstrating operator+ overloading----\n";
	rectangleC =  rectangleA + rectangleB;
	std::cout << "Area (rectangleA (3,5) + rectangleB (1,1)): " << rectangleC.area() << '\n';
	std::cout << "Perimeter (rectangleA (3,5) + rectangleB (1,1)): " << rectangleC.perimeter() << '\n';
	
	return 0;
}
