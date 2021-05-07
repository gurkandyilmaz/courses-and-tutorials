// This file contains a custom implementation of a Singly Linked List data structure.
// The list will have methods for inserting, removing, finding, and displaying elements.

#include "CustomLinkedList.h"

#include <exception>
#include <iostream>
#include <ostream>
#include <stdexcept>

CustomLinkedList::CustomLinkedList()
{
	/* initialize an empty list ?? */
	this->size = 0;
	this->head = nullptr;
}

CustomLinkedList::~CustomLinkedList()
{
	/* Free all the allocated memory. */
}

void CustomLinkedList::insertAtHead(int element)
{
	Node * newNode = new Node();
	newNode->data = element;
	
	if ( isEmpty() )
	{
		newNode->next = nullptr;
	}
	else
	{
		Node * temp = this->head;
		newNode->next = temp;
	}

	this->head = newNode;
	this->size++;
}

void CustomLinkedList::insertAtTail(int element)
{
	Node * newNode = new Node();
	newNode->data = element;
	
	if ( isEmpty() )
	{
		newNode->next = nullptr;
		this->head = newNode;
	}
	else
	{
		Node * temp = this->head;
		while( temp->next != nullptr )
		{
			temp = temp->next;
		}
		temp->next = newNode;
		newNode->next = nullptr;
		//delete [] temp;
	}

	this->size++;
}

bool CustomLinkedList::isEmpty()
{
	return this->size == 0;
}

int CustomLinkedList::operator[] (int index)
{
	try
	{
		if(index < this->size)
		{
			Node * temp = this->head;
			for(int i = 0; i < index; ++i)
			{
				temp = temp->next;
			}
			return temp->data;
		}
		else
		{
			throw std::out_of_range(" Index out of range!");
		}
	}
	catch(const std::out_of_range & e)
	{

		std::cerr << "An exception occured. " << index << e.what() << std::endl;
		return 9999; // error code
	}
}

std::ostream & operator<< (std::ostream & out, const CustomLinkedList & object)
{
	Node * temp = object.head;
	out << "HEAD -->\t";
	while(temp != nullptr)
	{
		out << temp->data << "\t";
		temp = temp->next;
	}
	out << "<-- TAIL ";
	return out;
}
