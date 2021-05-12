// This program demonstrates one of the two ways while making a call to a function
// namely call by value. In this way a copy of all the values created
// then computations made on those copied values without changing the original ones.

#include <stdio.h>

void call_by_value(int a, int b);

int main()
{
	int x = 10;
	int y = 20;
	
	printf("Original Values\nx: %d \t y: %d\n", x, y);
	call_by_value(x, y);
	printf("After the function call:\nx: %d \t y: %d\n", x, y);
	
	return 0;
}

void call_by_value(int a, int b)
{
	int x = a + 5;
	int y = b + 15;
	
	printf("Values inside the function:\nx: %d\t y: %d\n", x, y);

}
