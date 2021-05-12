// A program that takes a series of pairs of numbers as (product id, quantity sold)
// then calculates the total retail value of all products sold
// switch statements should be used.
// product:price --> 1:$3.00  2:$4.50  3:$10.00  4:$7.25  5:$6.75
#include <stdio.h>

int main(void){
	// Define Variables
	int product = 0;
	int  quantity = 0;
	float total = 0.0;
	unsigned int validate; // for checking if the loop will be terminated

	// Check the product name and depending on the name calculate the total price for that product
	do { 
		printf("Enter the product and quantity seperated with comma (-1 to end): ");
		validate = scanf("%d,%d", &product, &quantity);
		switch (product) {
			case 1:
				total += quantity*3.00;
				break;
			case 2:
				total += quantity*4.50;
				break;
			case 3:
				total += quantity*10.00;
				break;
			case 4:
				total += quantity*7.25;
				break;
			case 5:
				total += quantity*6.75;
				break;
		}
		
	}while (validate == 2); // end when the input length is not 2

	// Print the total price for all the products
	printf("Total Price: %.3lf \n", total);
}
