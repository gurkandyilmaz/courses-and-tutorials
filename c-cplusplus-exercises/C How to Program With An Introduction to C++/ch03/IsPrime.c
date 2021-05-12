// Write a program that asks an integer and prints if it is a Prime or not.
#include <stdio.h>

int main(void){
	// define variables
	unsigned int counter; // initialize the counter. if it is 2 then the number is a Prime
	unsigned int divider; // it will go from 2 up to the number
	int number = 0;
	
	// Take a number, if it is -1 end the loop
	printf("Enter a positive integer (-1 to end): ");
	scanf("%d", &number);
	while (number != -1){
		// Reset the variables
		divider = 1;
		counter = 0;

		if (number == 2){
			printf("Prime!\n");
		}
		else{
			// Find the dividers of the number
			while (divider <= number){
				
				if ((number % divider)==0){
					counter++;
				}

				divider++;
			}
		}
	
		// Check if counter is 2, that means the number can be divided only by 1 and itself
		if (counter == 2){
			printf("Prime!\n");
		}
		else{
			printf("Not a Prime!\n");
		}

		printf("Enter a positive integer (-1 to end): ");
		scanf("%d", &number);
	}
}
