// A program that calculates the approximate value of pi 
// for each iteration it prints the value

#include <stdio.h>

int main(void){
	// Define variables
	double pi;
	unsigned int counter, number_of_iterations;
	int nominator = 4;
	int denominator = 3; // denominator that will be incremented for every iteration

	// Ask how many iteration should be done
	// implement the formula pi = 4 - 4/3 + 4/5 -4/7 + 4/9 ...
	printf("Enter the number of iterations: ");
	scanf("%d", &number_of_iterations);
	pi = nominator;

	if (number_of_iterations == 1){
		printf("Approximate value of Pi: %d\n", nominator);
	}
	else{
		for (counter = 2; counter <= number_of_iterations; ++counter){
			
			if (counter%2 == 0){
				pi -= (float) nominator/denominator;
				denominator += 2;
			}
			else{
				pi += (float) nominator/denominator;
				denominator += 2;
			}
		}
		// Print the value of pi
		printf("Approximate value of Pi: %lf \n", pi);
	}
}
