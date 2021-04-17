// Asks the user to enter two integer numbers, prints their sum,product,difference,quotient,remainder
#include <stdio.h>

int main(void){
	//initialize variables
	int first, second, sum, product, difference, quotient, remainder;
	
	//Take the numbers from the user
	printf("Enter the first number: ");
	scanf("%d", &first);
	printf("Enter the second number: ");
	scanf("%d", &second);

	//calculate the answers
	sum = first + second;
	product = first * second;
	difference = first - second;
	quotient = first / second;
	remainder = first % second;

	//print the results
	printf("Sum: %d\nProdcut: %d\nDifference: %d\nQuotient: %d\nRemainder: %d\n", sum, product, difference, quotient, remainder);
}
