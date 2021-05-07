// This file contains a custom implementation of a Singly Linked List data structure.
// The list will have methods for inserting, removing, finding, and displaying elements.

#include "CustomLinkedList.h"

#include <iostream>
#include <ostream>

CustomLinkedList::CustomLinkedList()
{
	this->size = 0;
	this->head = nullptr;
}

CustomLinkedList::~CustomLinkedList()
{
	//delete [] this->head;
}

void CustomLinkedList::insert(int index, int element)
{
	if ( index == 0 )
	{
		this->insertAtHead(element);
	}
	else if (index == this->size - 1) 
	{
		this->insertAtTail(element);
	}
	else
	{
		if ( !this->isEmpty() )
		{
			Node * newNode = new Node();
			Node * temp = this->head;
			newNode->data = element;
		
			for (int i = 0; i < index - 1; i++)
			{
				temp = temp->next;	
			}
			newNode->next = temp->next;
			temp->next = newNode;
			this->size++;
		}
		else
		{
			std::cerr << "An exception occured at insert. The list is empty. Index " << index;
			std::cerr << " Not applicable!" << std::endl;
			exit(505);
		}
	}
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
	}
	this->size++;
}

void CustomLinkedList::remove(int element)
{
	Node * temp = this->head;
	Node * node;
	while(temp->data != element)
	{
		if (temp->next->data == element)
		{
			node = temp->next;
			break;
		}
		temp = temp->next;
	}
	temp->next = node->next;
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
		exit(505);
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

bool CustomLinkedList::isEmpty()
{
	return this->size == 0;
}
