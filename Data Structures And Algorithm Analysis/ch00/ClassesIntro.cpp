// This program demonstrates how one can create simple classes and instantiate them.

#include <iostream>

class Rectangle {
	int width;
	int height;
	public:
	void set_sides(int x, int y);
	double area(int x, int y);

};

void Rectangle::set_sides(int w, int h)
{
	width = w;
	height = h;
	std::cout << "Width: " << width << ", Height: " << height << "\n";
}

double Rectangle::area(int a, int b)
{
	return a*b;
}

int main()
{
	Rectangle rectangleA;
	Rectangle rectangleB;

	rectangleA.set_sides(3,5);
	std::cout << "Rectangle A area: " << rectangleA.area(3,5) << "\n";

	rectangleB.set_sides(4,8);
	std::cout << "Rectangle B area: " << rectangleA.area(4,8) << "\n";
	
	return 0;
}
