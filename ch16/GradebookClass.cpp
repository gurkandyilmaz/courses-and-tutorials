// This program demonstrates the usage of classes using a Gradebook implementation

#include <cstdio>
#include <iostream>
#include <string>
using namespace std;

class GradeBook
{
	public:
		void displayMessage(string courseName) const // cannot modify the object hence the name const
		{
			cout << "Welcome to the Grade Book for " << courseName << endl;
		}
};

int main()
{
	string nameOfCourse;
	GradeBook myGrades; // an object of type GradeBook

	cout << "Enter a course name: ";
	getline(cin, nameOfCourse); // get the input from the keyboard and assign it to nameOfCourse
	cout << endl;

	myGrades.displayMessage(nameOfCourse);
}
