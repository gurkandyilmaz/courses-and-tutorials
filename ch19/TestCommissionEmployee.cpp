// Test the CommissionEmployee class and its member functions

#include <iostream>
#include <string>
#include "CommissionEmployee.h"

using namespace std;


int main()
{
	CommissionEmployee employee1("James", "Franco", "147852963", 12000, .25);
	CommissionEmployee employee2("Jennifer", "Dylan", "987852461", 25000, 1.40);

	employee1.print();
	employee2.print();

	employee2.setCommissionRate(0.6);
	employee2.setGrossSales(30000);

	employee1.setGrossSales(20000);
	employee1.setSocialSecurityNumber("888896522");
	
	employee1.print();
	employee2.print();
}
