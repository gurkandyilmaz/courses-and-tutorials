// This program implements a recursive binary search algorithm on a non empty sorted array.

#include <cstdio>
#include <iostream>
#include <vector>

using namespace std;

void printArray(const vector<int> &);
int binary_search(const vector<int> &, int);

int main()
{
	const vector<int> List {2,4,5,8,11,13,17,25,27};
	int search_for = 25;

	printArray(List);
	printf("1 means the number is in the list. -1 means otherwise.\n");
	printf("Number (%d) : %d", search_for, binary_search(List, search_for));
	puts("");
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
	
	if ( number < a[middle] )
	{
		return binary_search(vector <int>( a.begin(), a.begin() + middle ), number);
	}

	else if ( number > a[middle] )
	{
		return binary_search(vector <int>( a.begin() + middle, a.end() ), number);
	}
	
	else
	{
		return 1;
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
