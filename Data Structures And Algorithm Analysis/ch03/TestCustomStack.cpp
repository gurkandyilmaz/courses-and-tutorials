// This file tests the implementation of a custom stack data structure based on a singly linked list.
// CustomStack.h contains declarations and CustomStack.cpp contains the implementation detalls.

#include "CustomStack.h"
#include <iostream>


int main()
{
	CustomStack StackA;
	
	StackA.push(55);
	StackA.push(77);
	StackA.push(101);
	StackA.push(99);
	StackA.pop();
	std::cout << StackA << std::endl;
	std::cout << StackA.peek() << std::endl;
	
	return 0;
}
