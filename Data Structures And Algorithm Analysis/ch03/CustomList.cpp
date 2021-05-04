// This file contains the implementation of a list data structure using C-like arrays.
// The list will have the methods such as find, insert, remove, findKth, printList, makeEmpty

#include <iostream>

class CustomList
{
	public:
		CustomList(); 
		CustomList(int len);
		void createList();
		void printList() const;
		void setLength(int len);
		int getLength() const;
	private:
		int length;
};

CustomList::CustomList()
{
	setLength(0);
}

CustomList::CustomList(int size)
{
	setLength(size);
}

void CustomList::createList()
{
	CustomList * ptr = new CustomList [getLength()];

}

void CustomList::printList() const
{
	if (getLength() == 0)
	{
		std::cout << "The length was not given so it is empty." << "\n";
	}
	else
	{
		for (int i = 0; i < getLength(); ++i)
		{
			std::cout << "TEST" << "\t";
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
	CustomList listA(3);
	CustomList listB(4);
	CustomList listC;

	std::cout << "lengthA: " << listA.getLength() << "\n";
	std::cout << "lengthB: " << listB.getLength() << "\n";
	std::cout << "lengthC: " << listC.getLength() << "\n";
	listA.printList();
	listB.printList();
	listC.printList();




}

