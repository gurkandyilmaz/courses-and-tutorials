// This program demonstrates the usage of classes using a Gradebook class implementation
// GradeBook.h contains member function prototypes and member data
// GradeBook.cpp contains the implementations of that member functions
// The main purpose is to separate the implementation from interface
// This file should be compiled with the file GradeBook.cpp

#include <iostream>
#include "GradeBook.h"
using namespace std;

int main()
{
	string nameOfCourse;
	GradeBook gradeBook1("Course Name shorter than 35 chars"); 
	GradeBook gradeBook2("Course Name longer than 35 characters for the Grade Book 2.");

//	cout << "Specify a course name: ";
//	getline(cin, nameOfCourse); // get the input from the keyboard and assign it to nameOfCourse
//	cout << endl;
//	gradeBook1.setCourseName(nameOfCourse);
//	gradeBook1.displayMessage();

	cout << "gradeBook1.displayMessage(): ";
	gradeBook1.displayMessage();
	cout << "gradeBook2.displayMessage(): ";
	gradeBook2.displayMessage();
		
	cout << "After setting gradebook 2 to \"Intro to CS\" gradeBook2.displayMessage(): " << endl;
	gradeBook2.setCourseName("Intro to CS");
	gradeBook2.displayMessage();

}

