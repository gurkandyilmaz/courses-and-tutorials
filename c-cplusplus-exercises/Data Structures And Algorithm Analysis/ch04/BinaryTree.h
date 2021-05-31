// This file contains the data members and function prottotypes for a 
// Binary Tree data structure based on a singly linked list.

#ifndef BINARYTREE_H
#define BINARYTREE_H

#include <iostream>
#include <ostream>
#include <queue>

struct Node
{
	int data;
	Node * left;
	Node * right;
};

class BinaryTree
{
	public:
		BinaryTree();
		~BinaryTree();
		void insert(int item);
		bool search(int item);
		void remove(int item);
		const Node * getRoot() const;
		friend std::ostream & operator<< (std::ostream & out, const BinaryTree & Object);
	private:
		bool isEmpty() const;
		int size;
		Node * root;
		Node * tracker;
		std::queue<Node *> nodes;
};

#endif // BINARYTREE_H

