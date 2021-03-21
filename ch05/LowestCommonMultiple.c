// Given two positive integers, write a program that finds 
// the lowest common multiple of these two integers

#include <stdio.h>

int lcm(int number_a, int number_b, int divider, int minimum);

int main(void)
{
	int min_, divider_;
}

int lcm(int number_a, int number_b, int divider, int minimum)
{
	if (divider == 1)
	{
		printf("The Lowest Common Multiple: %d \n", minimum);
		return 0;
	}
	else
	{
		if((number_a % divider == 0)&&(number_b % divider == 0))
		{
			minimum = divider;
			return lcm(number_a, number_b, divider--, minimum);
		}
		else
		{

		}
	}
	
}
