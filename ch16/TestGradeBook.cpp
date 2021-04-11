// This program demonstrates the usage of classes using a Gradebook class implementation
// GradeBook.h contains member function prototypes and member data
// GradeBook.cpp contains the implementations of that member functions
// The main purpose is to separate the implementation from interface
// This file should be compiled with the file GradeBook.cpp

#include <iostream>
#include <string>
#include "GradeBook.h"
using namespace std;

int main()
{
	string nameOfCourse, nameOfInstructor;

	cout << "Enter a course name: ";
	getline(cin, nameOfCourse); // get the input from the keyboard and assign it to nameOfCourse
	cout << "Enter the Instructor: ";
	getline(cin ,nameOfInstructor);

	GradeBook gradebook(nameOfCourse, nameOfInstructor);

	cout << "gradeBook.displayMessage(): ";
	gradebook.displayMessage();
		
	cout << "Enter a new name to change the instructor: ";
	getline(cin, nameOfInstructor);
	gradebook.setInstructorName(nameOfInstructor);
	gradebook.displayMessage();

}

