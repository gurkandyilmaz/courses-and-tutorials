// Implementations of the class which was derived from CommissionEmployee class.

#include <iostream>
#include <stdexcept>
#include "DerivedCommissionEmployee.h"

using namespace std;

DerivedCommissionEmployee::DerivedCommissionEmployee(const string &first, const string &last,
		const string &ssn, double sales, double ratio, double bsalary)
	: CommissionEmployee(first, last, ssn, sales, ratio)
{
	setBaseSalary(bsalary);
}

void DerivedCommissionEmployee::setBaseSalary(double salary)
{
	if(salary >= 0.0)
	{
		baseSalary = salary;
	}
	else
	{
		throw invalid_argument("Salary must be greater than 0.");
	}	
}

double DerivedCommissionEmployee::getBaseSalary() const
{
	return baseSalary;
}

double DerivedCommissionEmployee::earnings() const
{
	return getBaseSalary() + (getGrossSales() * getCommisionRate());
}

void DerivedCommissionEmployee::print() const
{
	cout << getFirstName() << " " << getLastName() << endl << "Social Security Number: " << getSocialSecurityNumber();
	cout << ", Gross sales: " << getGrossSales() << ", Commission Rate: " << getCommisionRate() << endl;
	cout << "Base Salary: " << getBaseSalary() << ", Earnings: " << earnings() << endl;
}

