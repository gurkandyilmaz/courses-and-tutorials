// A program that converts temperatures from 30C to 50C to Fahrenheit scale
// F = (9C)/5 + 32

#include <stdio.h>

int main(void){
	// Define the variables
	double temperature_celcius, temperature_fahrenheit;

	printf("%4s%21s\n","Celcius", "Fahrenheit");
	for (temperature_celcius = 30; temperature_celcius <= 50; ++temperature_celcius) {
		temperature_fahrenheit = (9*temperature_celcius)/5 + 32;
		printf("%4.1f%21.1f\n",temperature_celcius, temperature_fahrenheit);
	}
}
