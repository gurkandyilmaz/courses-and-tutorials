// Sorting an array's values into ascending order

#include <stdio.h>
#define SIZE 10

int main(void)
{
	int a[SIZE] = {20,5,4,8,11,9,89,68,45,21};

	puts("Data items in original order ");

	for (size_t i=0; i < SIZE; ++i)
	{
		printf("%4d", a[i]);
	}

	puts("");

	for (size_t first = 0; first < SIZE; ++first)
	{
		for (size_t second = first + 1; second < SIZE; ++second)
		{
			if (a[first] <= a[second])
			{
				continue;
			}
			else
			{
				int tmp = a [first];
				a[first] = a[second];
				a[second] = tmp;
			}
		}
	}
	
	puts("Data items sorted in ascending order");

	for (size_t i=0; i < SIZE; ++i)
	{
		printf("%4d", a[i]);
	}

	puts("");

	return 0;
}
