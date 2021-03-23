// A selection Sort Algorithm for a one-dimensional array

#include <stdio.h>
#include <sys/cdefs.h>
#define SIZE 10

int a[SIZE] = {5,2,1,3,8,9,14,52,36,14};


int selection_sort(int arr[]);

int main(void)
{
	
	printf("Unsorted Array: \n");
	for (size_t i = 0; i<SIZE; ++i)
	{
		printf("%d ", a[i]);
	}
	puts("");
	
	printf("Sorted Array: %d \n",selection_sort(a));
	//for(size_t y = 0; y<SIZE; ++y)
	//{
	//	printf("%d",);
	//}
	puts("");
	
}

int selection_sort(int arr[])
{
	int smallest;
	//int smallest_index;

	// Take one element and compare it to all other elements
	for(size_t first = 0; first < SIZE; ++first)
	{
		for(size_t second = first + 1; second < SIZE; ++second)
		{
			smallest = arr[first];

			if ( arr[second] < smallest)
			{
				smallest = arr[second];
				//smallest_index = second;
				printf("Smallest: %d \n", smallest);
			}
			else
			{
				continue;
			}
		}

	}
	return smallest;
}
