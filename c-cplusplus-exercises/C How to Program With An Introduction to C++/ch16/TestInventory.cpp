// This file contains tests for the Inventory class. This file needs Inventory.h and 
// it needs to be compiled together with the file Inventory.cpp.
// Simple Inventory to hold name, description and stock for a product.

#include <iostream>
#include <string>
#include "Inventory.h"

using namespace std;

int main()
{
	string desk_name = "Home Office Writing Desk.", desk_description = "Multipurpose, French Oak Gray";
	string chair_name = "Mid Back Bash Office Chair", chair_description = "Ergonomic Black Desk Chair.";
	int desk_stock = 25, chair_stock = 19;

	Inventory Desk(desk_name, desk_description, desk_stock);
	cout << "PRODUCT: DESK" << endl;
	cout << "Current Stock: " << Desk.getStock(desk_name) << endl;
	Desk.sell(desk_name);
	cout << "After selling one desk: " << Desk.getStock(desk_name) << endl;
	Desk.purchase(desk_name);
	cout << "After purchasing one desk: " << Desk.getStock(desk_name) << endl;

	cout << "\nPRODUCT: CHAIR" << endl;
	Inventory Chair(chair_name, chair_description, chair_stock);
	Chair.purchase(chair_name);
	Chair.purchase(chair_name);
	cout << "After purchasing 2 chairs: " << Chair.getStock(chair_name) << endl;

}

