// This program demonstrates the usage of classes using a Gradebook implementation

#include <cstdio>
#include <iostream>
#include <ostream>
#include <string>
using namespace std;

class GradeBook
{
	public:
		// Constructor initializes the courseName variable with the name supplied when creating the object
		explicit GradeBook(string name)
		: courseName(name)
		{
			//empty body
		}
		void displayMessage() const // cannot modify the object hence the name const
		{
			cout << "Welcome to the Grade Book for " << getCourseName() << endl;
		}
		string getCourseName() const
		{
			return courseName;
		}
		void setCourseName(string Name)
		{
			courseName = Name;
			cout << "Course name has been set to: " << courseName << endl;
		}

	private:
		string courseName;

};

int main()
{
	string nameOfCourse;
	GradeBook gradeBook1("Course for the Grade Book 1."); 
	GradeBook gradeBook2("Course for the Grade Book 2.");

//	cout << "Specify a course name: ";
//	getline(cin, nameOfCourse); // get the input from the keyboard and assign it to nameOfCourse
//	cout << endl;
//	gradeBook1.setCourseName(nameOfCourse);
//	gradeBook1.displayMessage();
	cout << "gradeBook1.displayMessage(): ";
	gradeBook1.displayMessage();
	cout << "gradeBook2.displayMessage(): ";
	gradeBook2.displayMessage();
	
	cout << "After setting gradebook 1 to TEST gradeBook1.displayMessage(): " << endl;
	gradeBook1.setCourseName("TEST");
	gradeBook1.displayMessage();

}

