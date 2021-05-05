// This file contains a custom implementation of a list data structure that will hold int values.
// The list will have a static size and it will have the methods such as find, findKth, 
// insertAt, remove, printList, makeEmpty

#include <iostream>
#include "CustomList.h"

CustomList::CustomList()
{
	setLength(0);
}

CustomList::CustomList(int size)
{
	setLength(size);
	createList();
}

CustomList::~CustomList()
{
	delete [] elements;
}

void CustomList::createList()
{
	if (getLength() == 0)
	{
		std::cout << "A list cannot be created with 0 length." << "\n";
	}
	else
	{
		elements = new int [getLength()];
	}
}

void CustomList::makeEmpty()
{
	std::cout << "Removing all the elements from the list...\n";
	for (int i = 0; i < getLength(); ++i)
	{
		*(elements + i) = 0;
	}
}

int CustomList::find(int element) const
{
	for (int idx = 0; idx < getLength(); ++idx)
	{
		if( elements[idx] == element ) 
		{
			return idx;
		}
	}
	return -1;
}

int CustomList::findKth(int index) const
{
	if ( index <= getLength()-1 )
	{
		return elements[index];
	}
	else
	{
		std::cout << "Index " << index <<" is out of range.\n";
		return -1;
	}
}

void CustomList::insertAt(int idx, int element)
{
	if (elements != nullptr)
	{
		if (idx <= getLength()-1 )
		{
			elements[idx] = element;
			//*(elements + 0) = element;
		}
		else
		{
			std::cout << "Index: " << idx << " is out of range.\n";
		}
	}
	else
	{
		std::cout << "Element: " << element <<" could not be inserted since the length is 0." << "\n";
	}
}

void CustomList::remove(int element)
{
	int idx = find(element);
	if (idx != -1)
	{
		std::cout << "Removing the element: " << element << "\n";
		elements[idx] = 0;
	}
	else
	{
		std::cout << "No such element: " << element << "\n";
	}
}

void CustomList::displayList() const
{
	if (getLength() == 0)
	{
		std::cout << "No elements in the list, so it is empty." << "\n";
	}
	else
	{
		std::cout << "List: \t";
		for (int i = 0; i < getLength(); ++i)
		{
			std::cout << elements[i] << "\t";
		}
		std::cout << "\n";
	}
}

void CustomList::setLength(int length)
{
	this->length = length;
}

int CustomList::getLength() const
{
	return length;
}
