// Given a positive number, write a program that prints 
// if that number is perfect. A perfect 
// number is special number that its factors(excluding the number itself) 
// add up to that number. For example, 6 is a perfect number since its factors 1+2+3 add up to 6.

#include <stdio.h>

int isPerfect(unsigned int number, unsigned int divider, unsigned int total);

int main(void)
{
	// Define variables
	unsigned int divider = 1;
	unsigned int total_sum = 0; 
	int number_, result;

	printf("Enter a number to see if it is a perfect: ");
	scanf("%u", &number_);
	result = isPerfect(number_, divider, total_sum);

}

int isPerfect(unsigned int number, unsigned int divider, unsigned int total)
{

	if (divider == number)
	{
		if (total == number){
			printf("The number < %d > is a Perfect number!\n", number);
			return 1;
		}
		else{
			printf("The number < %d > is NOT a Perfect number!\n", number);
			return 0;
		}
	}
	else
	{
		if(number % divider == 0) // divider is a factor of the number
		{
			total += divider;
			return isPerfect(number, divider+1, total);
		}
		else
		{
			total += 0;
			return isPerfect(number, divider+1, total);
		}
		
	
	}
}


