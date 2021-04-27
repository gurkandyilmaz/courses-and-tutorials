// This program demonstrates simple usage of dynamic memory allocation in C++
// User is asked to enter a size for an array and specify the elements one by one

#include <iostream>
#include <new> // required for handling allocation failures

int main()
{
	int size, counter;
	int * pointer;

	std::cout << "Enter the size of the array: ";
	std::cin >> size;
	
	//allocate a block of memory
	pointer = new (std::nothrow) int[size]; // nothrow will assign nullptr to pointer if there is a failure
	
	if (pointer == nullptr)
	{
		std::cout << "Memory could not be allocated!\n";
	}
	else
	{
		for(counter = 0; counter < size; ++counter)
		{
			std::cout << "Enter the value at the index " << counter+1 << ": ";
			std::cin >> *(pointer + counter);
			++counter;
		}
		
		std::cout << "Array: [ ";
		for(counter = 0; counter < size; ++counter)
		{
			std::cout <<  *(pointer + counter) << " ";
			++counter;
		}
		std::cout << "]\n";
	}
	
	// release the memory allocated by the array
	delete[] pointer;
	
	return 0;
}
