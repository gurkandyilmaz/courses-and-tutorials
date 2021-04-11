// GradeBook member function definitions. This file contains implementations of the member
// functions prototyped in GradeBook.h

#include <iostream>
#include "GradeBook.h"
using namespace std;

GradeBook::GradeBook(string name)
	: courseName(name)
{
	//empty body
}

string GradeBook::getCourseName() const
{
	return courseName;
}

void GradeBook::setCourseName(string name)
{
	courseName = name;
	cout << "Course name set to: " << courseName << endl;
}

void GradeBook::displayMessage() const
{
	cout << "Welcome to the course: " << getCourseName() << endl;
}
