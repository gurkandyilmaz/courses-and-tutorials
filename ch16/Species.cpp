// Species member function implementations. Species.h file is needed.

#include <iostream>
#include "Species.h"

using namespace std;

// Constructor
Species::Species(string name, string country, int population, double rate)
{
	setPopulation(population);
	setGrowthRate(rate);
	animalName = name;
	animalCountry = country;
}
// End constructor

// Mutators
int Species::CalculatePopulation(int year)
{
	int current_population = getPopulation();
	int new_population;
	
	new_population = current_population + (int) (getGrowthRate()*year);
	setPopulation(new_population);
	
	return getPopulation();
}
void Species::setPopulation(int population)
{
	if (population > 0)
	{
		animalPopulation = population;
	}
	else
	{
		animalPopulation = 1;
		cerr << "Animal population cannot be negative. Population set to 1." << endl;
	}
}
void Species::setGrowthRate(double rate)
{
	animalGrowthRate = rate;
}

void Species::setName(string name)
{
	animalName = name;
}

void Species::setCountry(string country)
{
	animalCountry = country;
}
// End mutators

// Accessors
string Species::getName() const
{
	return animalName;
}

string Species::getCountry() const
{
	return animalCountry;
}

int Species::getPopulation() const
{
	return animalPopulation;
}

double Species::getGrowthRate() const
{
	return animalGrowthRate;
}
// End accessors

