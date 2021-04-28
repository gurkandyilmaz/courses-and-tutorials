// This program demonstrates the usage of a data structure called Struct 
// and its one ıf use with pointers.

#include <iostream>
#include <string>
#include <sstream> // required for converting strings to numerical values.

struct product_type {
	int id;
	double price;
	std::string name;
	std::string description;
};

void printProducts(product_type products);

int main()
{
	int size;
	std::string id, price; // helper variables converting input string into numbers.

	product_type electronics;
	product_type * el_ptr = &electronics;
	
	std::cout << "Enter the id for the product: ";
	std::getline(std::cin, id);
	//std::stringstream(id) >> electronics.id; // same as below
	std::stringstream(id) >> el_ptr->id;
	
	std::cout << "Enter the name for the product: ";
	//std::getline(std::cin, electronics.name); // same as below
	std::getline(std::cin, el_ptr->name);

	std::cout << "Enter a description for the item: ";
	//std::getline(std::cin, electronics.description); // same as below
	std::getline(std::cin, el_ptr->description);

	std::cout << "Enter the price for the item: ";
	std::getline(std::cin, price);
	//std::stringstream(price) >> electronics.price; // same as below
	std::stringstream(price) >> el_ptr->price;

	printProducts(electronics);

}

void printProducts(product_type items)
{
	std::cout << "----------PRODUCTS----------" << std::endl;
	std::cout << "ID: " << items.id << "\nName: " << items.name << "\n";
	std::cout << "Description: " << items.description << "\nPrice: " << items.price << "\n";
}


