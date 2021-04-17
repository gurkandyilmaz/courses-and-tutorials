// Invoice member function implementations. Invoice.h file is needed.

#include <iostream>
#include "Invoice.h"

using namespace std;

// Constructor validates the quantity and price then assign them to data members.
Invoice::Invoice(string id, string description, int quantity, int price)
{
	setPrice(price);
	setQuantity(quantity);	
	partId = id;
	partDescription = description;
}// End constructor

// Accessors
int Invoice::getInvoiceAmount()
{
	return getQuantity() * getPrice();
}

string Invoice::getDescription()
{
	return partDescription;
}

int Invoice::getQuantity()
{
	return partQuantity;
}

int Invoice::getPrice()
{
	return pricePerQuantity;
}
// End Accessors

// Mutators
void Invoice::setDescription(string description)
{
	partDescription = description;
}

void Invoice::setQuantity(int quantity)
{
	if(quantity > 0)
	{
		partQuantity = quantity;
	}
	else
	{
		partQuantity = 0;
		cout << "Quantity cannot be negative. Quantity set to 0." << endl;
	}
}

void Invoice::setPrice(int price)
{
	pricePerQuantity = price;
	if (price > 0)
	{
		pricePerQuantity = price;
	}
	else
	{
		pricePerQuantity = 0;
		cout << "Price cannot be negative. Price set to 0." << endl;
	}
}
// End Mutators


