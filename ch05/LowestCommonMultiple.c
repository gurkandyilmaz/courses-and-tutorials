// Given two positive integers, write a program that finds 
// the lowest common multiple of these two integers

#include <stdio.h>

int GCF(int number_a, int number_b, int divider, int minimum);

int main(void)
{
	int min_ = 1; // required in finding the greatest common factor.
	int divider_, numberA, numberB, gcf, lcm;

	printf("Enter Two integers (separated by \",\"): ");
	scanf("%d, %d", &numberA, &numberB);

	if (numberA > numberB){ // take the smaller number as the divider
		divider_ = numberB;
	}
	else
	{
		divider_ = numberA;
	}

	gcf = GCF(numberA, numberB, divider_, min_);
	lcm = (numberA * numberB) / gcf;
	printf("The lowest common multiple of (%d,%d) is %d: \n", numberA, numberB, lcm);
}

// First find Greatest Common Factor then use it to find Lowest Common Multiple.
int GCF(int number_a, int number_b, int divider, int minimum)
{
	if (divider == 1)
	{
		return minimum;
	}
	else
	{
		if((number_a % divider == 0)&&(number_b % divider == 0)) // Common factor
		{
			minimum = divider;
			return minimum;
		}
		else
		{
			return GCF(number_a, number_b, divider-1, minimum);
		}
	}
}
