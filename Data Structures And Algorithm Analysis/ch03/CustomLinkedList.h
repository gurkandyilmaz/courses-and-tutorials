// This file contains the data members and member function prototypes for a 
// Singly Linked List data structure.

#ifndef CUSTOMLINKEDLIST_H
#define CUSTOMLINKEDLIST_H

#include <iostream>

struct Node {
	int data;
	Node * next;
};

class CustomLinkedList
{
	public:
		CustomLinkedList();
		~CustomLinkedList();
		void insertAtHead(int element);
		void insertAtTail(int element);
		void remove(int element);
		bool isEmpty();
		int operator[] (int index);
		friend std::ostream & operator<< (std::ostream & out, const CustomLinkedList & object);	
	private:
		int size;
		Node * head;
};
#endif // CUSTOMLINKEDLIST_H
