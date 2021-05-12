// A program that takes a current credit limit and the account balance
// then cut the current credit limit in half and print if the user is eligible to take a credit

#include <stdio.h>

int main(void){
	// Define variables
	double current_limit, current_balance;
	unsigned int input_limit; // for validating scanf return value
	unsigned int input_balance; // for validating scanf return value

	printf("Type the current credit limit <Enter> then type the current account balance <Enter>\n");
	do {
		printf("Enter the current credit limit in dollars: ");
		input_limit = scanf("%lf", &current_limit);
		
		if (input_limit != 1){ // check if the input contains a single value
			printf("Limit should contain a single value.\n");
			break;
		}

		printf("Enter the current account balance: ");
		input_balance = scanf("%lf", &current_balance);

		if (input_balance != 1){ // check if the input contains a single value
			printf("Amount should be a single value.\n");
			break;
		}

		// From this point on calculate if the user is eligible to take a credit
		printf("Your new credit limit: %.2lf \n", (current_limit/2));
		if (current_limit/2 < current_balance) { // means the user owes more money than the new limit.
			printf("You are NOT eligible to take a new credit\n");
		}
		else {
			printf("You ARE eligible to take a new credit\n");
		}

	} while(current_limit != -1);
}
