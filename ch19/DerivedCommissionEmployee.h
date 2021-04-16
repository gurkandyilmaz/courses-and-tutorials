// A derived class from CommissionEmployee class.
// All member functions and data members from CommissionEmployee will be available in this derived class


#ifndef DERIVED_H
#define DERIVED_H

#include <string>
#include "CommissionEmployee.h"

class DerivedCommissionEmployee : public CommissionEmployee
{
	public:
		DerivedCommissionEmployee(const std::string &, const std::string &,
				const std::string &, double = 0.0, double = 0.0, double = 0.0);

		void setBaseSalary(double);
		double getBaseSalary() const;
		
		double earnings() const;
		void print() const;
	private:
		double baseSalary;
};
#endif
