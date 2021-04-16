// Test the CommissionEmployee and DerivedCommissionEmployee classes and their member functions

#include <iostream>
#include <string>
#include "CommissionEmployee.h"
#include "DerivedCommissionEmployee.h"

using namespace std;

int main()
{
	CommissionEmployee employee1("James", "Franco", "147852963", 12000, .25);
	CommissionEmployee employee2("Jennifer", "Dylan", "987852461", 25000, 0.40);

	employee1.print();
	employee2.print();

	employee2.setCommissionRate(0.6);
	employee2.setGrossSales(30000);

	employee1.setGrossSales(20000);
	employee1.setSocialSecurityNumber("888896522");
	
	employee1.print();
	employee2.print();

	cout << "\n>>>>>> Testing of the derived class <<<<<<\n" << endl;

	DerivedCommissionEmployee employee3("Derived", "Employee", "64685464", 20000, 0.2, 10000);
	
	employee3.print();
	employee3.setBaseSalary(25000);
	employee3.print();
	employee3.setCommissionRate(0.8);
	employee3.print();
}
