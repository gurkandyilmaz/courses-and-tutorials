// Write a program that converts strings to integer and floating point numbers 
// and calculates the sum of these converted numbers. 
// The strings represent integer or floating point numbers

#include <stdio.h>
#include <stdlib.h>
#define SIZE 6

// function for converting from string to floating point numbers
double StringToFloat(char *string[], char **remainingPtr);

// function for converting from string to long integer numbers
long StringToInteger(char *string[], char **remainingPtr, int base);


int main()
{
	char *float_string[SIZE] = {"1.5","2.5","3.65","7.35","4.20","4.8"};
	char *integer_string[SIZE] = {"700","2000","1500","800","6000","2000"};
	char *remainingStringPtr;
	
	double d = StringToFloat(float_string, &remainingStringPtr);
	long e = StringToInteger(integer_string, &remainingStringPtr, 0);
}

double StringToFloat(char *string[], char **remainingPtr)
{
	double sum = 0.0;
	double average = 0.0;

	for (size_t i = 0; i < SIZE; ++i)
	{
		printf("The value: %.2f \n", strtod(string[i], remainingPtr));
		sum += strtod(string[i], remainingPtr);
	}
	
	average = sum/SIZE;
	printf("The sum: %.2f and The average: %.2f \n", sum, average);
	
	return sum;
}

long StringToInteger(char *string[], char **remainingPtr, int base)
{
	long sum = 0;
	double average = 0.0;

	for (size_t i = 0; i < SIZE; ++i)
	{
		printf("The value: %lu \n", strtol(string[i], remainingPtr, base));
		sum += strtol(string[i], remainingPtr, base);
	}
	
	average = sum/SIZE;
	printf("The sum: %lu and The average: %.1f \n", sum, average);
	
	return sum;
}

