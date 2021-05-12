// This file contains a custom implementation of a Queue data structure using a singly linked list
// The Queue will have methods such as enqueue, dequeue, front, back, display.

#include "CustomQueue.h"
#include <iostream>
#include <ostream>

CustomQueue::CustomQueue()
{
	this->size = 0;
	this->head = nullptr;
	this->tail = nullptr;
}

CustomQueue::~CustomQueue()
{
	/* Delete the allocated memory. */
}

void CustomQueue::enqueue(int element)
{
	Node * newNode = new Node();
	newNode->data = element;
	if( this->isEmpty() )
	{
		newNode->next = nullptr;
		this->head = newNode;
		this->tail = this->head;
	}
	else
	{
		this->tail->next = newNode;
		//newNode->next = this->tail;
		this->tail = newNode;
	}
	this->size++;

}

void CustomQueue::dequeue()
{
	Node * old = this->head;
	this->head = old->next;
	this->size--;
	//old->next = nullptr;

	delete old;
}

int CustomQueue::front()
{
	return this->head->data;
}

int CustomQueue::back()
{
	return this->tail->data;
}

std::ostream & operator<< (std::ostream & out, const CustomQueue & object)
{
	Node * temp = object.head;
	out << "HEAD--> "; 
	for(int i = 0; i < object.size; i++ )
	{
		out << temp->data << "\t";
		temp = temp->next;
	}
	return out;
}

bool CustomQueue::isEmpty()
{
	return this->size == 0;
}





