// This file contains the data members and member functions without implementation
// for the CustomList class

#ifndef CUSTOMLIST_H
#define CUSTOMLIST_H

class CustomList
{
	public:
		CustomList();
		CustomList(int len);
		~CustomList();
		void createList();
		void makeEmpty();
		int find(int element) const;
		int findKth(int index) const;
		void insertAt(int index, int element);
		void remove(int element);
		void displayList() const;
		void setLength(int len);
		int getLength() const;
	private:
		int length;
		int * elements = nullptr;
};

#endif
