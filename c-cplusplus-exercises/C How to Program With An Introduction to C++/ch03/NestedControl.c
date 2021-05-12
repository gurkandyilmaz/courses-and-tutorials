// Write a program that takes the result of a quiz (1:passed, 2:failed)
// then prints the number of students who passed and failed,
// also print "Bonus to the instructor" message if there are more than 8 successfull students.

#include <stdio.h>

int main(void){
	// initialize variables
	unsigned int student_counter = 1; 
	unsigned int passed = 0;
	unsigned int failed = 0;

	while (student_counter <= 10){ // process 10 students' exam results
		unsigned int result;
		
		// prompt user for input and the remaining numbers of results to be entered
		printf("Enter the exam result (1 or 2), remaining -> %u: ", (11-student_counter));
		scanf("%u", &result);
	
		// if the result is 1 increment the number of successfull students
		if (result == 1){
			passed++;	
		}
		else{
			failed++;
		}
		student_counter++;
	}
	
	// Print the number of passes and failures
	printf("The number of students who were PASSED: %u\n", passed);
	printf("The number of students who were FAILED: %u\n", failed);
	
	// if more than 8 students passed, print the Bonus message
	if (passed > 8){
		printf("Bonus to the instructor!\n");
	}
}

