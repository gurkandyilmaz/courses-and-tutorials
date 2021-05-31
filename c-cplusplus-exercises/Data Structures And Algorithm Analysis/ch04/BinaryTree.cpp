// This file contains a custom implementation for a binary tree based on a singly
// linked list. The list will have methods for inserting, removing, searching and
// displaying the tree. insertions will go from left to right.
/*
			   1
			/     \
			2      3
		   / \     / \
		  4   5    6  7
*/


#include "BinaryTree.h"
#include <iostream>
#include <iterator>
#include <ostream>

BinaryTree::BinaryTree()
{
	this->size = 0;
	this->root = nullptr;
	
	std::cout << "Node Created..." << std::endl;
}

BinaryTree::~BinaryTree()
{
	/* Free all the memory */
}

void BinaryTree::insert(int item)
{
	Node * newNode = new Node();
	newNode->data = item;
	newNode->left = nullptr;
	newNode->right = nullptr;

	if ( this->isEmpty() )
	{
		this->root = newNode;
		this->tracker = this->root;
		this->nodes.push(this->tracker);
		//this->nodes.push(this->root->right);
	}
	else
	{
		//std::cout << "HERE: " << this->nodes.size() << "--"<< newNode->data <<std::endl;
		Node * temp = this->nodes.front();
		this->nodes.pop();
		if ( temp == nullptr )
		{
			temp->left = newNode;
			this->nodes.push(temp->right);
			//this->tracker->left = temp;
		}
		else
		{
			//this->tracker->right = temp;
			this->nodes.push( temp->left );
			this->nodes.push( temp->right );
		}
		//std::cout << "TEMP: "<< temp->data << "---" << temp->left<<"---" << temp->right <<std::endl;
		std::cout << "Tracker: " << this->nodes.front() << std::endl;
		//this->nodes.push(temp->left);
		//this->nodes.push(temp->right);
		//this->tracker = this->nodes.front();
	}
	std::cout << "Before: " << this->tracker->data << "\t";
	//this->tracker = this->nodes.front();
	//std::cout << "After: " << this->tracker->data << "\n";
	this->size++;
	std::cout << "Size: " << this->size << "\n";
}

bool BinaryTree::isEmpty() const
{
	return this->size == 0;
}

std::ostream & operator<< (std::ostream & out, const BinaryTree & Object)
{
	Node * temp = Object.root;
	//out << "SIZE: " << Object.size << "\t" << temp->data <<"\n";
	if ( temp == nullptr )
	{
		out << "Empty Tree";
		return out;
	}
	out << temp->left->data <<"\n";
	//while( temp != nullptr )
	//{
	//	Node * temp_left = temp->left;
	//	Node * temp_right = temp->right;

	//	if ( temp->left == nullptr )
	//	{
	//		out << temp->data << "\n";
	//		return out;
	//	}
	//	else if ( temp_left != nullptr && temp_right == nullptr )
	//	{
	//		out << temp->data << "\n" << temp_left->data << "\t";
	//		return out;
	//	}
	//	else if ( temp_left != nullptr && temp_right != nullptr )
	//	{
	//		out << temp->data << "\n" << temp_left->data << "\t" << temp_right->data << "\n";
	//	}
	//	temp = temp->left;
	//}
		
	return out;
}

const Node * BinaryTree::getRoot() const
{
	return this->root;
}
