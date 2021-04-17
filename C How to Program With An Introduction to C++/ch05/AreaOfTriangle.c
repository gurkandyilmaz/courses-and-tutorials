// Write a program that takes 3 nonzero double values as the sides of a triangle
// and calculates and returns the area of the triangle as a double value.
// It should also check whether the numbers represent the sides of a triangle before 
// calculating the area.

#include <math.h>
#include <stdio.h>

double area(double side_a, double side_b, double side_c);
int is_triangle(double a, double b, double c);

int main(void)
{
	double sideA, sideB, sideC, A;
	// Takes 3 nonzero numbers. Validate if they form a valid triangle and calculate the area
	printf("Enter the sides of a triangle (separated by \",\"): ");
	scanf("%lf, %lf, %lf", &sideA, &sideB, &sideC);
	//printf("%lf  %lf  %lf \n", sideA, sideB, sideC);
	A = area(sideA, sideB, sideC);
	if (A==0)
	{
		puts("");
	}
	else
	{
		printf("Area: %.3lf \n", A);
	}

}
// Calculate the area and return the result if the triangle is valid
double area(double side_a, double side_b, double side_c)
{
	double s; // half perimeter of the triangle. Area is sqrt(s(s-a)(s-b)(s-c))
	int is_valid;
	is_valid = is_triangle(side_a, side_b, side_c);
	if (is_valid == 1)
	{
		s = (side_a + side_b + side_c)/2.0;
		return sqrt(s*(s - side_a)*(s - side_b)*(s - side_c));
	}
	else
	{
		printf("The sides entered do NOT form a valid Triangle \n");
		return 0;
	}
}
// Return 1 if the sides form a valid triangle, 0 otherwise
int is_triangle(double a, double b, double c)
{
	if (a+b>c && b+c>a && a+c>b)
	{
		return 1;
	}
	else
	{
		return 0;
	}
}
