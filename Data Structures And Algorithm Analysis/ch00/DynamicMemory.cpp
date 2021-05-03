// This program demonstrates simple usage of dynamic memory allocation in C++
// User is asked to enter a size for an array and specify the elements one by one

#include <iostream>
#include <new> // required for handling allocation failures

int main()
{
	int size, counter;
	int * user_array;

	std::cout << "Enter the size of the array: ";
	std::cin >> size;
	
	//allocate a block of memory
	user_array = new (std::nothrow) int[size]; // nothrow will assign nullptr to user_array if there is a failure
	
	if (user_array == nullptr)
	{
		std::cout << "Memory could not be allocated!\n";
	}
	else
	{
		for(counter = 0; counter < size; ++counter)
		{
			std::cout << "Enter the value at the index " << counter+1 << ": ";
			std::cin >> *(user_array + counter);
		}
		
		std::cout << "Array: [ ";
		for(counter = 0; counter < size; ++counter)
		{
			std::cout <<  *(user_array + counter) << " ";
		}
		std::cout << "]\n";
	}
	
	// release the memory allocated by the array
	delete[] user_array;
	
	return 0;
}
