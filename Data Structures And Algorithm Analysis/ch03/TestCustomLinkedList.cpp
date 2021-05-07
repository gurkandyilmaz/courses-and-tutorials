// This file is used to test the CustomLinkedList class declared in CustomLinkedList.h
// and implemented in CustomLinkedList.cpp

#include "CustomLinkedList.h"
#include <iostream>

int main()
{
	CustomLinkedList ListA, ListB;

	ListA.insertAtHead(55);
	ListA.insertAtHead(77);
	ListA.insertAtTail(99);
	ListA.insertAtHead(88);
	ListA.insertAtTail(-11);
	ListA.insertAtTail(74);
	ListA.insert(0, 123);
	ListA.insert(1, 147);
	ListA.insert(2, 100);
	ListA.remove(99);
	ListA.remove(77);
	std::cout << ListA << std::endl;
	std::cout << "ListA[2]: " << ListA[2] << std::endl;

//	ListB.insert(0, 852);
//	ListB.insertAtTail(147);
//	ListB.insertAtHead(95);
//	std::cout << ListB << std::endl;
}
