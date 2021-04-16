// A base class for demonstrating inheritance in classes

#ifndef COMMISSION_H
#define COMMISSION_H

#include <string>

class CommissionEmployee
{
	public:
		CommissionEmployee(const std::string &, const std::string &, const std::string &, 
				double = 0.0, double = 0.0);
		void setFirstName(const std::string &);
		std::string getFirstName() const;

		void setLastName(const std::string &);
		std::string getLastName() const;

		void setSocialSecurityNumber(const std::string &);
		std::string getSocialSecurityNumber() const;

		void setGrossSales(double);
		double getGrossSales() const;

		void setCommissionRate(double);
		double getCommisionRate() const;

		double earnings() const;
		void print();

	private:
		std::string firstName;
		std::string lastName;
		std::string socialSecurityNumber;
		double grossSales;
		double commisionRate;
};

#endif
