// This file is used to test the CustomLinkedList class declared in CustomLinkedList.h
// and implemented in CustomLinkedList.cpp

#include <iostream>
#include "CustomLinkedList.h"

int main()
{
	CustomLinkedList ListA;
	ListA.insertAtHead(55);
	ListA.insertAtHead(77);
	ListA.insertAtTail(99);
	ListA.insertAtHead(101);
	ListA.insertAtHead(88);
	ListA.insertAtTail(-11);
	ListA.insertAtTail(74);
	std::cout << ListA << std::endl;
	std::cout << ListA[100] << std::endl;

}
