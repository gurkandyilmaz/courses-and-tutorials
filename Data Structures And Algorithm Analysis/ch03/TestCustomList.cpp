// This file is to test the CustomList class prototyped in CustomList.h and
// implemented in CustomList.cpp

#include <iostream>
#include "CustomList.h"

int main()
{
	CustomList listB(5);

	listB.insertAt(1, 22);
	listB.insertAt(0, 55);
	listB.insertAt(3, 77);
	listB.insertAt(2, 11);
	listB.insertAt(1, 99);
	listB.insertAt(4, 144);
	//std::cout << "idx of 77: " << listB.find(77) << std::endl;
	//std::cout << "2nd element: " << listB.findKth(2) << std::endl;
	listB.displayList();
	listB.remove(77);
	//listB.makeEmpty();
	listB.displayList();
}
