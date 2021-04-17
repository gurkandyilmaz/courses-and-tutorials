// Invoice class definition. This file contains the prototypes
// to be used in the file Invoice.cpp which holds the implementation details.

#include <string>

class Invoice
{
	public:
		explicit Invoice(std::string id, std::string description, int quantity, int price);
		// mutators and accessors for the 3 variable, description, quantity, price
		void setDescription(std::string description);
		std::string getDescription();
		void setQuantity(int quantity);
		int getQuantity();
		void setPrice(int price);
		int getPrice();
		
		// Invoice bill
		int getInvoiceAmount();
	private:
		std::string partId;
		std::string partDescription;
		int partQuantity;
		int pricePerQuantity;
};

