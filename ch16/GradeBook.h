// GradeBook class definition. This file presents GradeBook's public interface
// without revealing the implementations of GradeBook's member functions
// Member functions defined in GradeBookClass.cpp
#include <string>

class GradeBook
{
	public:
		explicit GradeBook(std::string course_name, std::string instructor_name);
		void setCourseName(std::string name);
		void setInstructorName(std::string name);
		void displayMessage() const;
		std::string getCourseName() const;
		std::string getInstructorName() const;
	private:
		std::string courseName;
		std::string instructorName;
};
