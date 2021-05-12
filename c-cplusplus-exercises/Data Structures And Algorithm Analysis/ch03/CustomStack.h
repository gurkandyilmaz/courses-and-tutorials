// This file contains the declarations of a custom stack data structure.
// The stack will be based on a singly linked list and it will hold integer data.

#ifndef CUSTOMSTACK_H
#define CUSTOMSTACK_H

#include <ostream>
#include <iostream>

struct Node {
	int data;
	Node * next;
};

class CustomStack 
{
	public:
		CustomStack();
		~CustomStack();
		void push(int element);
		void pop();
		int peek();
		friend std::ostream & operator<< (std::ostream & out, const CustomStack & object);
	private:
		bool isEmpty();
		int size;
		Node * top;
		Node * bottom;
};

#endif // CUSTOMSTACK_H
