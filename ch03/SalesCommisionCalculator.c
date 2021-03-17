#include <stdio.h>

int main(void){
	// Define the variables
	float gross_sales; // gross sales for a week
	float salary; // salary for the week (gross_sales*ratio + constant)
	int constant = 200; // initialize a constant value of 200 dollars
	float ratio = 0.09; // initialize a constant ratio of %9
	
	printf("Enter the gross sales (-1 to end): ");
	scanf("%f", &gross_sales);
	
	while(gross_sales != -1){
		salary = (float) constant + gross_sales*ratio;
		printf("Salary is: $%.2f \n", salary);
		
		printf("Enter the gross sales (-1 to end): ");
		scanf("%f", &gross_sales);
	}
}
