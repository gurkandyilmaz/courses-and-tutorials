// Test files can be used to test the Invoice Class implementation,
// which was prototyped in Invoice.h and implemented in Invoice.cpp
// This file should be compiled together with Invoice.cpp

#include <iostream>
#include "Invoice.h"

using namespace std;

int main()
{
	string desk_id = "DE11", desk_description = "Home Office Working Desk. French Oak Gray";
	int desk_quantity = 2, desk_price = 150;
	string chair_id = "CH01", chair_description = "Black Back Mash Office Chair";
	int chair_quantity = 4, chair_price = 70;
	
	cout << "<<<DESK>>>" << endl;
	Invoice Desk(desk_id, desk_description, desk_quantity, desk_price);
	cout << "Description: " << Desk.getDescription() << endl;
	cout << "Quantity: " << Desk.getQuantity() << ", Price per Quantity: " << Desk.getPrice() << ", Invoice amount: " << Desk.getInvoiceAmount() << endl; 
	Desk.setPrice(250);
	cout << "After setting price to 250, Quantity: " << Desk.getQuantity() << ", Invoice amount: " << Desk.getInvoiceAmount() << endl; 

	cout << "\n<<<CHAIR>>>" << endl;
	Invoice Chair(chair_id, chair_description, chair_quantity, chair_price);
	cout << "Description: " << Chair.getDescription() << endl;
	cout << "Quantity: " << Chair.getQuantity() << ", Price per Quantity: " << Chair.getPrice() << ", Invoice amount: " << Chair.getInvoiceAmount() << endl; 
	Chair.setQuantity(7);
	cout << "After setting quantity to 7, Price per Quantity: " << Chair.getPrice() << ", Invoice amount: " << Chair.getInvoiceAmount() << endl; 

}
