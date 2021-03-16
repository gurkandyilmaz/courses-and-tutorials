//A program that takes an integer up to 5 digits and separates the digits.
#include <stdio.h>

int main(void){
	//initialize variables
	int integer;
	int first, second, third, fourth, fifth;
	int constant = 10000;
	//Asks for an input
	printf("Program takes an integer up to 5 digits and separates the digits.\n");
	printf("Enter a dive digit integer: ");
	scanf("%d", &integer);
	
	//find the leftmost digit, reset the integer without the leftmost digit.
	first = integer / 10000;
	integer = integer - first*10000;

	//Repeat the above step.
	second = integer / 1000;
	integer = integer - second*1000;

	third = integer / 100;
	integer = integer - third*100;

	fourth = integer / 10;
	fifth = integer % 10;
	printf("Digits from left to right: %d \t %d \t %d \t %d \t %d \n", first, second, third, fourth, fifth);

}

