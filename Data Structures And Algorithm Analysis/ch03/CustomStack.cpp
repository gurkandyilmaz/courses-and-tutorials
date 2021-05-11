// This file contains a custom implementation of a Stack data structure using a singly linked list as a base.             
// The stack will have methods for pushing an element, popping, peeking an element at the top 
// and displaying the elements.  

#include "CustomStack.h"
#include <iostream>
#include <ostream>

CustomStack::CustomStack()
{
	this->size = 0;
	this->top = nullptr;
	this->bottom = nullptr;
}

CustomStack::~CustomStack()
{
	/* Free all the allocated memory */
}

void CustomStack::push(int element)
{
	Node * newNode = new Node();
	newNode->data = element;
	if ( this->isEmpty() )
	{
		newNode->next = nullptr;
		this->top = newNode;
		this->bottom = this->top;
	}
	else
	{
		Node * temp = this->bottom;
		while (temp->next != nullptr)
		{
			temp = temp->next;
		}
		this->top = newNode;
		temp->next = this->top;
	}
	this->size++;
}

void CustomStack::pop()
{
	Node * temp = this->bottom;
	Node * prev = nullptr;

	for (int i = 0; i < this->size -2; i++)
	{
		prev = temp;
		temp = temp->next;	
	}
	this->top = temp;
	prev->next = this->top;
	this->size--;
}

int CustomStack::peek()
{
	return this->top->data;
}

bool CustomStack::isEmpty()
{
	return this->size == 0;
}

std::ostream & operator<< (std::ostream & out, const CustomStack & object)
{
	Node * temp = object.bottom;
	for (int i = 0; i < object.size; i++ )
	{
		out << temp->data << "\t";
		temp = temp->next;
	}
	out << "<--TOP";
	return out;
}
