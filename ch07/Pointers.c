// Usage of the & and * pointer operators.

#include <stdio.h>

int main()
{
	int a=7;
	int *aPtr = &a; // set aPtr to the address of a

	printf("The address of a is %p\nThe value of aPtr is %p\n\n", &a, aPtr);
	
	printf("The value of a is %d\nThe value of *aPtr is %d\n\n", a, *aPtr);

	printf("Showing that * and & are complements of each other\n &*aPtr = %p\n*&aPtr = %p\n ", &*aPtr, *&aPtr);

	return 0;
}
