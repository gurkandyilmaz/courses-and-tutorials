// This file is used to test the CustomLinkedList class declared in CustomLinkedList.h
// and implemented in CustomLinkedList.cpp

#include <iostream>
#include "CustomLinkedList.h"

int main()
{
	CustomLinkedList ListA;
	ListA.insertAt(0, 55);
	std::cout << ListA << std::endl;

}
