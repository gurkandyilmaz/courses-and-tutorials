// GradeBook member function definitions. This file contains implementations of the member
// functions prototyped in GradeBook.h

#include <iostream>
#include "GradeBook.h"
using namespace std;

GradeBook::GradeBook(string course_name, string instructor_name)
{
	setCourseName(course_name); // required to validate the length of the course name
	setInstructorName(instructor_name);
}

string GradeBook::getCourseName() const
{
	return courseName;
}

string GradeBook::getInstructorName() const
{
	return instructorName;
}

void GradeBook::setCourseName(string name)
{
	if (name.size() <= 35)
	{
		courseName = name;
		cout << "Course name set to: " << getCourseName() << endl;
	}
	else 
	{
		courseName = name.substr(0,35);
		cout << "Course name set to: " << getCourseName() << endl;
	}
}
void GradeBook::setInstructorName(string instructor_name)
{
	instructorName = instructor_name;
	cout << "The instructor name is set to: " << getInstructorName() << endl;
}

void GradeBook::displayMessage() const
{
	cout << "Welcome to the course: " << getCourseName() << endl;
	cout << "Instructor: " << getInstructorName() << endl;
}
