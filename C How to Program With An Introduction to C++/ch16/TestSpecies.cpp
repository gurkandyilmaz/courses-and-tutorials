// This file can be used to test the Species Class implementation,
// which was prototyped in Species.h and implemented in Species.cpp
// This file should be compiled together with Species.cpp

#include <iostream>
#include "Species.h"

using namespace std;

int main()
{
	string name = "Black Rhino", country = "Namibia";
	int population = 5600;
	double rate = 1.25;

	Species Rhino(name, country, population, rate);
	cout << "Name: " << Rhino.getName() << ", Country: " << Rhino.getCountry() << ", Population: " << Rhino.getPopulation() << ", Growth: " << Rhino.getGrowthRate() << endl;
	cout << "Population after 8 years: " << Rhino.CalculatePopulation(8) << endl;
	Rhino.setGrowthRate(20.5);
	cout << "Population after 8 years when GrowthRate set to 20.5: " << Rhino.CalculatePopulation(8) << endl;
	Rhino.setPopulation(100);
	Rhino.setGrowthRate(5.0);
	cout << "Current Population 100, GrowthRate 5.0, New Population after 10 years: " << Rhino.CalculatePopulation(10) << endl;

}
