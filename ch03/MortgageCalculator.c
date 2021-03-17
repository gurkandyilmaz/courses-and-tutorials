// Write a program that takes mortgage amount, mortgage term, and the interest rate
// then calculates and prompts the payable amount per month.

#include <stdio.h>

int main(void){
	// Define the variables
	unsigned int account_number; // special id for each customer's account
	unsigned int mortgage_term; // in years
	float mortgage_amount;
	float interest_rate;

	// Take the inputs from the user
	printf("Enter the account number (-1 to quit): ");
	scanf("%u", &account_number);
	while (account_number != -1){ // exit condition
		
		printf("Enter the mortgage amount (in dollars): ");
		scanf("%f", &mortgage_amount);

		printf("Enter the mortgage_term (in years): ");
		scanf("%u", &mortgage_term);
		
		printf("Enter the interest rate(as a decimal): ");
		scanf("%f", &interest_rate);
		
		mortgage_amount += (interest_rate*mortgage_term*mortgage_amount);

		// Calculate the payable amounth per month
		float total_time = (float) mortgage_term * 12;
		printf("The monthly payable amount is: %.0f\n", (mortgage_amount/total_time));

		printf("Enter the account number (-1 to quit): ");
		scanf("%u", &account_number);
	}
}
