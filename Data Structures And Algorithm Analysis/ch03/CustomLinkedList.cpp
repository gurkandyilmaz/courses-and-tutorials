// This file contains a custom implementation of a Singly Linked List data structure.
// The list will have methods for inserting, removing, finding, and displaying elements.

#include <iostream>
#include <ostream>
#include "CustomLinkedList.h"

CustomLinkedList::CustomLinkedList()
{
	/* initialize an empty list ?? */
}

CustomLinkedList::~CustomLinkedList()
{
	/* Free all the allocated memory. */
}

void CustomLinkedList::insertAt(int index, int element)
{
	Node * newNode = new Node();
	this->head = newNode;
	newNode->next = nullptr;
	newNode->data = element;
}

int CustomLinkedList::operator[] (int index)
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
		std::cout << "The index " << index << " out of range." << std::endl;
		return 9999; // error code
	}
}

std::ostream & operator<< (std::ostream & out, const CustomLinkedList & object)
{
	Node * temp = object.head;
	while(temp != nullptr)
	{
		out << temp->data << "\t";
		temp = temp->next;
	}
	return out;
}
