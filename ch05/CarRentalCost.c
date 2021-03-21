// A program that takes the hour a car is rented in, calculates the total cost with the given specifications.
// minimum fee is $25 for 8 hours, after 8 hours an additional
// $5 is charged per hour. The maximum charge for a day is $50.
// The company also chares $0.50 as a service tax. No car is rented for more than 72 hours.
// If a car is rented for more than 24 hours, rental is calculated on a daily basis.
// The result should be in a neat tabular format.

#include <stdio.h>

double calculate_cost(unsigned int time); // function prototype

int main(void){
	// Define variables
	int state = 0;
	unsigned int car_id;
	unsigned int hours;

	while (state != -1){
		// Take the rent time and car id from the user
		printf("Enter the Car ID (0 to end): ");
		scanf("%u", &car_id);
		
		if (car_id == 0){
			state = -1;
			continue;
		}

		printf("Enter the rent time: ");
		scanf("%u", &hours);

		// Calculate the total cost
		double total = calculate_cost(hours);
		
		// print the cost;
		printf("Total Charge: %.2lf \n", total);
	}
}

double calculate_cost(unsigned int time){
	double total_cost = 0.00;
	
	double minimum_charge = 25.00;
	double additional_charge = 5.00;
	double maximum_charge = 50.00;
	double tax = 0.50;
	
	// If the time is smaller than 24 hours, calculate the cost directly 
	if (time < 24){
		total_cost += minimum_charge + additional_charge*(time - 8.00) + tax*time;
		return total_cost;
	}
	// else consider the maximum_charge per day
	else{
		int divider;
		int remainder;
		divider = time/24.0;
		remainder = time % 24;
		total_cost += maximum_charge*divider + additional_charge*remainder + tax*time;
		return total_cost;
	}
}




