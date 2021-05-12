// This program demonstrates the usage of member and pointer operators of Structures

#include <stdio.h>

// Declare the structure
struct employee {
	char firstName[20];
	char lastName[20];
	char gender;
	unsigned int age;
	double hourlySalary;
};

int main(void)
{
	// initialize the structure variable person_1
	struct employee person_1 = {
		"Adam",
		"Fewer",
		'M',
		48,
		8.7
	};

	struct employee *personPtr = &person_1; // to be used as an alternative.

	printf("person_1.firstName: %s\nperson_1.lastName: %s\nperson_1.gender: %c\n", person_1.firstName, person_1.lastName, person_1.gender);
	printf("person_1.age: %u\nperson_1.hourlySalary: %.2f\n", person_1.age, person_1.hourlySalary);
	printf("(*personPtr).firstName: %s\n",  (*personPtr).firstName);
	printf("personPtr->firstName: %s\n", personPtr->firstName);

}
