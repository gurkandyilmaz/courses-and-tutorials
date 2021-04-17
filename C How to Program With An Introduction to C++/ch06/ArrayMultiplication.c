// Write a program that takes two 2D array and prints the result of multiplication 
// of these two arrays. Assume arrays satisfy the multiplication condition for matrices.

#include <stdio.h>
#define COL_FIRST 3 //This is the same as ROW_SECOND
#define COL_SECOND 2
#define ROW_FIRST 2

int first[][COL_FIRST] = {{2,1,4},{1,5,2}};
int second[][COL_SECOND] = {{3,2},{2,1},{4,3}};
void multiply(int f[][COL_FIRST], int s[][COL_SECOND]);

int main(void)
{
	printf("First Array: \n");
	for(size_t i=0; i < ROW_FIRST; ++i)
	{
		for(size_t k=0; k < COL_FIRST; ++k)
		{
			printf("%d ", first[i][k]);
		}
		puts("");
	}
	puts("");

	printf("Second Array: \n");
	for(size_t i=0; i < COL_FIRST; ++i)
	{
		for(size_t k=0; k < COL_SECOND; ++k)
		{
			printf("%d ", second[i][k]);
		}
		puts("");
	}
	puts("");

	multiply(first, second);

}

void multiply(int f[][COL_FIRST], int s[][COL_SECOND])
{
	int result[ROW_FIRST][COL_SECOND];
	int sum = 0;

	// 3 for loops to iterate over three different dimensions of the two matrices
	// First get the sum from multiplying one row from the first matrix and one column from the second matrix
	// Then write the sum to the result matrix, set the sum to zero for the next iterations
	for(size_t m=0; m < ROW_FIRST; ++m)
	{
		for(size_t k=0; k < COL_SECOND; ++k) 
		{
			for(size_t n=0; n < COL_FIRST; ++n)
			{
				sum += f[m][n]*s[n][k];
			}
			result[m][k] = sum;
			sum = 0;
		}
	}
	
	printf("Result: \n");
	for(size_t x=0; x < ROW_FIRST; ++x)
	{
		for(size_t y=0; y < COL_SECOND; ++y)
		{
			printf("%d ", result[x][y]);
		}
		puts("");
	}
	puts("");
}
