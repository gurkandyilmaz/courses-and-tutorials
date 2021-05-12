// This program demonstrates using "this" pointer to refer to object members.

#include <iostream>

using namespace std;

class Test
{
	public:
		explicit Test ( int = 0);
		void print() const;
	private:
		int x;
};

// constructor
Test::Test(int value)
	: x( value ) // initialize x to value
{
	//empty body
}
// end constructor

// print
void Test::print() const
{
	cout << "x = " << x << endl;
	cout << "this-> = " << this->x << endl;
	cout << "(*this).x = " << (*this).x << endl; 
}
// end print 

int main(){
	Test testObject(12);

	testObject.print();
}

