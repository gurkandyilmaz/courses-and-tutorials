// Write a program that finds the union and intersection of two sets.

#include <stdio.h>
#define SIZE 5

int a[SIZE] = {8,1,4,3,7};
int b[SIZE] = {2,7,6,9,3};
int union_of_sets[2*SIZE], intersection_of_sets[SIZE];

void set_union(int first[], int second[]);
void set_intersection(int first[], int second[]);

int main(void)
{
	printf("First Set: ");
	for(size_t j=0; j<SIZE; ++j)
	{
		printf("%d ", a[j]);
	}
	puts("");

	printf("Second Set: ");
	for(size_t j=0; j<SIZE; ++j)
	{
		printf("%d ", b[j]);
	}
	puts("");

	set_union(a, b);

}

void set_union(int first[], int second[])
{
	int counter = 0;
	int index = 0;

	//Copy all the elements from the first array into union_
	for(size_t i=0; i<SIZE; ++i)
	{
		union_of_sets[i] = first[i];
	}
	
	for(size_t i=0; i<SIZE; ++i)
	{
		for(size_t k=0; k<SIZE; ++k)
		{
			if(union_of_sets[k] == second[i]) // count the same elements from the two arrays
			{
				counter++;
			}
			else
			{
				continue;
			}
		}
		
		if(counter == 0) // zero means the element from the second array is not present in the union
		{
			union_of_sets[SIZE+index] = second[i]; // add the element from the second array to the first
			index++;
		}
		else
		{
			counter = 0;
		}
	}

	printf("Union : \n");
	for(size_t m=0; m<2*SIZE; ++m)
	{
		printf("%d ", union_of_sets[m]);
	}
	puts("");
}

void set_intersection(int first[], int second[])
{

}

