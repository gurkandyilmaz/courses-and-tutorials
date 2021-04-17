// Write a program that takes 10 nonnegative integers and prints the largest one
#include <stdio.h>

int main(void){
	// Define variables
	unsigned int counter = 1;
	unsigned int largest = 0;
	unsigned int number;
	
	// Take 10 numbers
	while (counter <= 10){
		printf("Enter an integer (remaining -> %d): ", (11-counter));
		scanf("%u", &number);
		if (number > largest){
			largest = number; // if the numbe is larger than the current one, set the number as largest
		}
		counter++;
	}
	printf("Largest number: %u \n", largest);
}
