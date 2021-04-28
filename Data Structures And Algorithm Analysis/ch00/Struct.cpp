// This program demonstrates the usage of a data structure called Struct 
// and its one ıf use with pointers.

#include <iostream>
#include <string>
#include <sstream> // will be used for converting strings to numerical values.

struct product_type {
	int id;
	double price;
	std::string name;
	std::string description;
};

product_type * takeProducts(int size);
void printProducts(product_type products[], int size);

int main()
{
	int size;
	std::string size_str;
	product_type * prod_ptr = nullptr;
	
	std::cout << "Enter the size for the product list: ";
	std::getline(std::cin, size_str);
	std::stringstream(size_str) >> size;
	
	prod_ptr = takeProducts(size);	
	printProducts(prod_ptr, size);
	delete[] prod_ptr;
}

product_type * takeProducts(int size)
{
	product_type * products = new product_type [size]; // to be able to return a pointer dynamically allocate a block of memory
	std::string id, price; // helper variables converting input string into numbers.

	for(int i = 0; i < size; ++i)
	{
		std::cout << "Enter the id for the product ("<< i+1 << "): ";
		std::getline(std::cin, id);
		std::stringstream(id) >> (products + i)->id;
		
		std::cout << "Enter the name for the product ("<< i+1 << "): ";
		std::getline(std::cin, (products + i)->name);
	
		std::cout << "Enter a description for the product (" << i+1 << "): ";
		std::getline(std::cin, (products + i)->description);
	
		std::cout << "Enter the price for the product (" << i+1 << "): ";
		std::getline(std::cin, price);
		std::stringstream(price) >> (products + i)->price;
	}
	
	return products;
}

void printProducts(product_type products[], int size)
{
	for (int i = 0; i < size; ++i)
	{
		std::cout << "----------PRODUCTS----------" << std::endl;
		std::cout << "ID: " << products[i].id << "\nName: " << products[i].name << "\n";
		std::cout << "Description: " << products[i].description << "\nPrice: " << products[i].price << "\n";
		std::cout << "---------------------------\n";
	}
}
