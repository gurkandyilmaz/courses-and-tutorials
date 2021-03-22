// Write a recursive function power(base, exponent) that when invoked
// returns base^exponent

#include <stdio.h>

unsigned int power(int base, int exponent, int answer);

int main(void)
{
	// Define variables
	int base_, exponent_;
	int answer_ = 1; // minimum result corresponding zero exponent

	printf("Enter two integers (base, exponent) to see base^exponent: ");
	scanf("%d, %d", &base_, &exponent_);
	printf("%d^%d is : %d \n", base_, exponent_, power(base_, exponent_, answer_));
}

unsigned int power(int base, int exponent, int answer)
{
	if(exponent == 1)
	{
		answer *= base;
		return answer;
	}
	else
	{
		answer *= base;
		return power(base, exponent-1, answer);
	}
	
}
