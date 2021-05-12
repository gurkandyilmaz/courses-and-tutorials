// This file is used to test the BinaryTree class declared in BinaryTree.h
// and implemented in BinaryTree.cpp

#include "BinaryTree.h"
#include <iostream>

int main()
{
	BinaryTree TreeA;
	TreeA.insert(55);
	TreeA.insert(66);
	TreeA.insert(77);
	//TreeA.insert(88);
	std::cout << TreeA.getRoot()->data << TreeA.getRoot()->left->data << TreeA.getRoot()->right->data <<std::endl;
	//std::cout << TreeA << std::endl;
}


