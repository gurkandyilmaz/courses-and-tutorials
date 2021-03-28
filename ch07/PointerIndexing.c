// Demonstrating the notations of pointer indexing with arrays

#include <stdio.h>
#define ARRAY_SIZE 4

int main(void)
{
	int b[] = {10,20,30,40};
	int *bPtr = b; // create pPtr pointer object and point it to the array b

	puts("Array b printed with:\nArray index notation");

	for(size_t i = 0; i < ARRAY_SIZE; ++i)
	{
		printf("b[%lu] = %d\n", i, b[i]);
	}
	
	puts("\nPointer/offset notation where\nthe pointer is the array name");

	for(size_t offset = 0; offset < ARRAY_SIZE; ++offset)
	{
		printf("b[%lu] = %d\n", offset, *(b+offset));
	}

	puts("\nPointer index notation");

	for(size_t i = 0; i < ARRAY_SIZE; ++i)
	{
		printf("bPtr[%lu] = %d\n", i, bPtr[i]);
	}

	puts("\nname");

	for(size_t offset = 0; offset < ARRAY_SIZE; ++offset)
	{
		printf("b[%lu] = %d\n", offset, *(b+offset));
	}

}
