// GradeBook member function definitions. This file contains implementations of the member
// functions prototyped in GradeBook.h

#include <iostream>
#include "GradeBook.h"
using namespace std;

GradeBook::GradeBook(string name)
{
	setCourseName(name); // required to validate the length of the name
}

string GradeBook::getCourseName() const
{
	return courseName;
}

void GradeBook::setCourseName(string name)
{
	if (name.size() <= 35)
	{
		courseName = name;
		cout << "Course name set to: " << courseName << endl;
	}
	else 
	{
		courseName = name.substr(0,35);
		cout << "Course name set to: " << courseName << endl;
	}
}

void GradeBook::displayMessage() const
{
	cout << "Welcome to the course: " << getCourseName() << endl;
}
