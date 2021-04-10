// This program demonstrates the usage of classes using a Gradebook implementation

#include <iostream>
using namespace std;

class GradeBook
{
	public:
		void displayMessage() const // cannot modify the object hence the name const
		{
			cout << "Welcome to the Grade Book." << endl;
		}
};


int main()
{
	GradeBook myGrades; // an object of type GradeBook
	myGrades.displayMessage();

}
