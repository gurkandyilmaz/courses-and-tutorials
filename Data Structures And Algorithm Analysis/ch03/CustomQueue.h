// This file contains the declarations of a custom queue data structure.                          
// The queue will be based on a singly linked list and it will hold integer data.

#ifndef CUSTOMQUEUE_H
#define CUSTOMQUEUE_H

#include <ostream>

struct Node {
	int data;
	Node * next;
};

class CustomQueue
{
	public:
		CustomQueue();
		~CustomQueue();
		void enqueue(int element);
		void dequeue();
		int front();
		int back();
		friend std::ostream & operator<< (std::ostream & out, const CustomQueue & object);
	private:
		bool isEmpty();
		int size;
		Node * head;
		Node * tail;


};

#endif // CUSTOMQUEUE_H
