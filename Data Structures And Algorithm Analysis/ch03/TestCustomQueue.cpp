// This file is used to test the implementation of a custom Queue data structure.
// CustomQueue.cpp contains the implementation details and CustomQueue.h contains
// the declarations for the class

#include "CustomQueue.h"
#include <iostream>


int main()
{
	CustomQueue QueueA;
	QueueA.enqueue(55);
	QueueA.enqueue(99);
	QueueA.enqueue(77);
	QueueA.enqueue(11);
	QueueA.enqueue(123);
	QueueA.enqueue(888);
	
	std::cout << QueueA << std::endl;
	std::cout << "Front: " << QueueA.front() << " Back: " << QueueA.back() << std::endl;
	
	QueueA.dequeue();
	QueueA.dequeue();
	QueueA.dequeue();
	
	std::cout << QueueA << std::endl;
	std::cout << "Front: " << QueueA.front() << " Back: " << QueueA.back() << std::endl;
	
	return 0;
}


