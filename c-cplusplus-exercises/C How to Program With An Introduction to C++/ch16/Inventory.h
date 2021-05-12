// Inventory class definition. This file contains the prototypes
// to be used in the file Inventory.cpp which holds the implementation details.

#include <string>

class Inventory
{
	public:
		explicit Inventory(std::string name, std::string description, int stock);
		void purchase(std::string name);
		void sell(std::string name);
		int getStock(std::string name);
	private:
		std::string productName;
		std::string productDescription;
		int productStock;

};
