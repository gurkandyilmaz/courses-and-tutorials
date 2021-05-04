// This file contains the implementation of a list data structure using C-like arrays.
// The list will have the methods such as find, insert, remove, findKth, printList, makeEmpty

#include <iostream>

class CustomList
{
	public:
		CustomList(); 
		CustomList(int len);
		void createList();
		void insert(int element);
		void printList() const;
		void setLength(int len);
		int getLength() const;
	private:
		int length;
		int * elements = nullptr;
};

CustomList::CustomList()
{
	setLength(0);
}

CustomList::CustomList(int size)
{
	setLength(size);
	createList();
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

void CustomList::insert(int element)
{
	elements[0] = element;
	//*(elements + 0) = element;
}

void CustomList::printList() const
{
	if (getLength() == 0)
	{
		std::cout << "No elements in the list, so it is empty." << "\n";
	}
	else
	{
		for (int i = 0; i < getLength(); ++i)
		{
			std::cout << elements[i] << "\t";
		}
		std::cout << "\n";
	}
}

void CustomList::setLength(int len)
{
	length = len;
	std::cout << "List Length set to: " << getLength() << "\n";
}

int CustomList::getLength() const
{
	return length;
}

int main()
{
	//CustomList listA;
	CustomList listB(3);
	//CustomList listC(4);
	listB.insert(12);

	//std::cout << "lengthA: " << listA.getLength() << "\n";
	std::cout << "lengthB: " << listB.getLength() << "\n";
	//std::cout << "lengthC: " << listC.getLength() << "\n";
	
	//listA.printList();
	listB.printList();
	//listC.printList();




}

