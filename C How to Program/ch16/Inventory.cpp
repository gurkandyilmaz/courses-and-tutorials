// Inventory member function implementations. Inventory.h file is needed.

#include <iostream>
#include "Inventory.h"

using namespace std;

//Class constructor to validate stock balance and initialize data members accordingly.
Inventory::Inventory(string name, string description, int stock)
{
	if (stock >= 20)
	{
		productName = name;
		productDescription = description;
		productStock = stock;
	}
	else
	{
		productStock = 20;
		cerr << "Minimum Stock cannot be less than 20. Stock set to 20: " << endl;
	}
}// End of the constructor.

// Member function implementations.
void Inventory::purchase(string name)
{
	productStock += 1;
}

void Inventory::sell(string name) // a product can be sold if there are more than 20.
{
	if (productStock > 20)
	{
		productStock -= 1;
	}
	else
	{
		cout << "Minimum stock limit reached. No more selling for this product!" << endl;
	}
}

int Inventory::getStock(string name)
{
	return productStock;
}

