// Takes an indefinite number of grades, and returns the average. Sentinel condition is -1.
#include <stdio.h>

int main(void){
	// initialize variables.
	unsigned int grade_counter = 0;
	int total_grade = 0;

	// Input, Sum, count the quiz grades.
	int grade = 0;
	printf("Enter a grade (-1 to see the average): ");
	scanf("%d", &grade);
	while (grade != -1){
		total_grade = total_grade + grade;
		grade_counter = grade_counter + 1;
		printf("Enter the next grade (-1 to see the average): ");
		scanf("%d", &grade);
	}

	// calculate and print the average.
	float average = 0.0;
	if (grade_counter != 0){ // check for ZeroDivision
		average = (float) total_grade / grade_counter;
		printf("The average grade is: %.3f \n", average);
	}
	else{
		printf("No grades were entered.\n");
	}
}

