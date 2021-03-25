// A selection Sort Algorithm for a one-dimensional array

#include <stdio.h>
#include <sys/cdefs.h>
#define SIZE 10

int a[SIZE] = {21,7,5,11,8,4,12,23,36,14};
int counter = 0; // It will be used to track which elements will be replaced in the array.

int selection_sort(int arr[]); // SelectionSort function

int main(void)
{
	printf("Unsorted Array: \n");
	for (size_t i = 0; i<SIZE; ++i)
	{
		printf("%4d ", a[i]);
	}
	puts("");
	
	selection_sort(a);
}

int selection_sort(int arr[])
{
	int smallest = arr[counter]; // take the fisrt element from the array as the smallest.
	int idx = counter; // to be used when the smallest element will keep its place in the array
	int tmp;
	
	// Selection
	// Take one element and compare it to all other elements
	for(size_t first = counter; first < SIZE; ++first)
	{
		for(size_t second = first + 1; second < SIZE; ++second)
		{
			if (arr[second] < arr[first] && arr[second] < smallest)
			{
				smallest = arr[second];
				idx = second;
			}
			else
			{
				continue;
			}
		}
		if(counter == SIZE-1) // The last element will stay as the last element.
		{
			idx = counter;
		}
	}
	
	// Sorting
	// Take the smallest element, place it in the first place
	if(counter < SIZE) // make a recursive call to the function until SIZE-1 elements are sorted
	{
		tmp = arr[counter];
		printf("Tmp: %d IDX: %d \n", tmp, idx);
		arr[counter] = smallest;
		arr[idx] = tmp;
		counter++;

		return selection_sort(arr);
	}
	else
	{
		printf("Sorted Array: \n");
		for(size_t y = 0; y<SIZE; ++y)
		{
			printf("%4d", arr[y]);
		}
		puts("");

		return 0;
	}
}
