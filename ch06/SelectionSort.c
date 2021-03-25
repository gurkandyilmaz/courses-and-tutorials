// A selection Sort Algorithm for a one-dimensional array

#include <stdio.h>
#include <sys/cdefs.h>
#define SIZE 10

int a[SIZE] = {21,7,5,3,8,4,12,23,36,14};
int b[SIZE];
int counter = 0;

int selection_sort(int arr[]);

int main(void)
{
	int smallest_, tmp;

	printf("Unsorted Array: \n");
	for (size_t i = 0; i<SIZE; ++i)
	{
		printf("%d ", a[i]);
	}
	puts("");
	
	printf("Smallest number: %d \n", selection_sort(a));
}

int selection_sort(int arr[])
{
	int smallest = arr[counter]; // take an arbitrary element from the array as the smallest.
	int smallest_idx, tmp;

	// Selection
	// Take one element and compare it to all other elements
	for(size_t first = counter; first < SIZE; ++first)
	{
		for(size_t second = first + 1; second < SIZE; ++second)
		{
			if (arr[second] < arr[first] && arr[second] < smallest)
			{
				smallest = arr[second];
				smallest_idx = second;
				printf("Smallest: %d \n", smallest);
			}
			else
			{
				continue;
			}
		}
	}
	if(counter < SIZE)
	{
		tmp = arr[counter];
		arr[counter] = smallest;
		arr[smallest_idx] = tmp;
		counter++;
		return selection_sort(arr);
	}
	else
	{
		printf("Sorted Array: \n");
		for(size_t y = 0; y<SIZE; ++y)
		{
			printf("%d", arr[y]);
		}
		puts("");
		return 0;
	}

}
