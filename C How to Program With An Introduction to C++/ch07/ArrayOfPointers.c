// This program demonstrates the usage of array of pointers to strings.

#include <stdio.h>
#include <string.h>
#define ARRAY_SIZE 4

int main()
{
	char *arr[ARRAY_SIZE] = {"Samsung", "Apple", "Microsoft", "Google"};

	// Print all the element of the array.
	printf("ARRAY: ");
	for(size_t y = 0; y < ARRAY_SIZE; ++y)
	{
		printf("%s ", *(arr+y));
	}
	puts("\n");

	// Get the second string and its address in the array
	printf("Second string: %s \t Address: %p\n\n", *(arr+1), arr+1);
	
	// Get the third character in the third string
	printf("Third character:'%c' in the third string: \"%s\"\n\n", *(*(arr+2)+2), *(arr+2));
	
	// Print all the strings with their first 3 characters
	printf("The first 3 characters of all the strings: \n");
	for(size_t i = 0; i < ARRAY_SIZE; ++i)
	{
		printf("String: ");
		for(size_t k = 0; k < 3; ++k)
		{
			printf("%c", *(*(arr+i)+k));
		}
		puts("");
	}

	return 0;
}
