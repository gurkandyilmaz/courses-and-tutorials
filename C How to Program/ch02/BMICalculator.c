// Body Mass Index Calculator
#include <stdio.h>

int main(void){
	// initialize the variables
	float weight, height, bmi;
	// weight in kg, height in cm
	printf("Enter your Weight (kg): ");
	scanf("%f", &weight);
	printf("Enter your Height (cm): ");
	scanf("%f", &height);
	height = height / 100;
	// BMI formula
	bmi = weight / (height*height);
	printf("BMI: %.1f --> ", bmi);

	// Check weight status depending on BMI value
	if (bmi < 18.5){
		printf("Underweight \n");
	}

	if (18.5 <= bmi && bmi < 25){
		printf("Normal \n");
	}

	if (25.0 <= bmi && bmi < 30){
		printf("Overweight \n");
	}

	if (30.0 <= bmi){
		printf("Obese \n");
	}

}
