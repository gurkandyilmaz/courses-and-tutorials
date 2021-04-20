// This program implements the binary search algorithm on a non empty sorted array.

#include <cstdio>
#include <iostream>
#include <vector>

using namespace std;

void printArray(const vector<int> &);
int binary_search(const vector<int> &, int);

int main()
{
	const vector<int> List {2,4,5,8,11,13,17,25,27};
	int search_for = 19;

	printArray(List);
	cout << "Found idx: " << binary_search(List, search_for) << endl;
}

int binary_search(const vector<int> & a, int number)
{
	int middle;
	int idx = 0, left = 0, right = a.size();
	middle = (left+right) / 2;
	
	if (a.size() == 1)
	{
		if(a[0] == number)
		{
			return 1;
		}
		else
		{
			return -1;
		}
	}
	
//	cout << "Middle: " << middle << " left: " << left << " right: " << right << endl;
//	for(int i = 0; i < a.size(); ++i)
//	{
//		cout << a[i] << " ";
//	}
//	cout << endl;

	if (a[middle] == number)
	{
		return 1;
	}
	else if ( number < a[middle] )
	{
		return binary_search(vector <int>( a.begin(), a.begin() + middle ), number);
	}
	else if ( number > a[middle] )
	{
		return binary_search(vector <int>( a.begin() + middle, a.end() ), number);
	}
	else
	{
		return -9999;
	}
}

void printArray(const vector<int> & a)
{
	cout << "Elements in the array: ";
	for (int i = 0; i < a.size(); ++i)
	{
		printf("a[%d]:%d, ", i, a[i]);
	}
	cout << endl;
}
