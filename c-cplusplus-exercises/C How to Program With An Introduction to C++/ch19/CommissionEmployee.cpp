// Member function implementations for the header CommissionEmployee.h

#include <iostream>
#include <iterator>
#include <stdexcept>
#include "CommissionEmployee.h"

using namespace std;

// constructor
CommissionEmployee::CommissionEmployee(const string &first, const string &last, 
		const string &social, double sales, double ratio)
{
	// initialize data members
	firstName = first;
	lastName = last;
	socialSecurityNumber = social;
	setGrossSales(sales);
	setCommissionRate(ratio);
}
// end constructor

void CommissionEmployee::setFirstName(const std::string &first)
{
	firstName = first;
}

string CommissionEmployee::getFirstName() const
{
	return firstName;
}

void CommissionEmployee::setLastName(const string &last)
{
	lastName = last;
}

string CommissionEmployee::getLastName() const
{
	return lastName;
}

void CommissionEmployee::setSocialSecurityNumber(const string &social)
{
	socialSecurityNumber = social;
}

string CommissionEmployee::getSocialSecurityNumber() const
{
	return socialSecurityNumber;
}

void CommissionEmployee::setGrossSales(double sales)
{
	if (sales >= 0)
	{
		grossSales = sales;
	}
	else
	{
		throw invalid_argument("Sales cannot be negative.");
	}
}

double CommissionEmployee::getGrossSales() const
{
	return grossSales;
}

void CommissionEmployee::setCommissionRate(double ratio)
{
	if (ratio >= 0 && ratio <=1)
	{
		commisionRate = ratio;
	}
	else
	{
		throw invalid_argument("Ratio should be in between 0.0 and 1.0.");
	}
}

double CommissionEmployee::getCommisionRate() const
{
	return commisionRate;
}

double CommissionEmployee::earnings() const
{
	return getGrossSales() * getCommisionRate();
}

void CommissionEmployee::print()
{
	cout << getFirstName() <<" "<<getLastName() << endl;
	cout << "Your gross sales: " << getGrossSales() << " and Commission Rate: " << getCommisionRate() << endl;
	cout << "Your social security number: " << getSocialSecurityNumber() << endl;
	cout << "Your salary: " << earnings() << ".\n" << endl;
}


