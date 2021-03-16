// A program that asks the user to enter the initial velocity,acceleration,time that elapsed
// for an object, and prints the final velocity and the distance traversed.

#include <stdio.h>

int main(void){
	// initialize all the variables
	float initial, acceleration, time;
	float final, distance;
	// take the inputs
	printf("Enter the initial velocity(m/s): ");
	scanf("%f", &initial);
	printf("Enter the acceleration (m/s*s): ");
	scanf("%f", &acceleration);
	printf("Enter the time (s): ");
	scanf("%f", &time);
	//Calculate the final velocity and the distance then print.
	final = initial + acceleration*time;
	distance = initial*time + (acceleration*time*time)/2;
	printf("Final velocity: %.3f (m/s)\nDistance traversed: %.3f (m)\n", final, distance);

}
