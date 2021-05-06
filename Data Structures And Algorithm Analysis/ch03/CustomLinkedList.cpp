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

int & CustomLinkedList::operator[] (int index)
{
	if(index < this->size)
	{
		/*iterate over the list find the correct node, return the data.*/
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
