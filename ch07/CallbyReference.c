// This program demonstrates one of the two ways while making a call to a function
// namely call by reference. In this way addresses of the values are sent to the function 
// then computations made with theses references affect the original values.

#include <stdio.h>

// * represents the memory addresses not the values in that addresses
void call_by_reference(int *a, int *b);


int main()
{
	int x = 10;
	int y = 20;
	
	int *xPtr;
	int *yPtr;
	xPtr = &x;
	yPtr = &y;
	// the above four lines could be written as int *xPtr=&x; and int*yPtr=&y;

	printf("Original Values\nx: %d \t y: %d\n", x, y);
	call_by_reference(xPtr, yPtr);
	printf("After the function call:\nx: %d \t y: %d\n", x, y);
	
	return 0;
}

void call_by_reference(int *a, int *b)
{
	// a holds the memory address of x, the value in that memory cell can be received by *a
	*a += 15;
	*b += 25;
	
	printf("Values inside the function:\nx: %d\t y: %d\n", *a, *b);
}
