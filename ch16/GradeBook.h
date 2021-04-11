// GradeBook class definition. This file presents GradeBook's public interface
// without revealing the implementations of GradeBook's member functions
// Member functions defined in GradeBookClass.cpp
#include <string>

class GradeBook
{
	public:
		explicit GradeBook(std::string name);
		void setCourseName(std::string name);
		void displayMessage() const;
		std::string getCourseName() const;
	private:
		std::string courseName;
};
