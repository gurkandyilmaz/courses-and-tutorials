// Species class definition. This file contains the prototypes
// to be used in the file Species.cpp which holds the implementation details.
// A class that holds the name, country, population, growth rate for endangered species

#include <string>

class Species
{
	public:
		explicit Species(std::string name, std::string country, int population, double rate);
		int CalculatePopulation(int year);
		void setName(std::string name);
		void setCountry(std::string country);
		void setPopulation(int population);
		void setGrowthRate(double rate);
		std::string getName() const;
		std::string getCountry() const;
		int getPopulation() const;
		double getGrowthRate() const;
	private:
		std::string animalName;
		std::string animalCountry;
		int animalPopulation;
		double animalGrowthRate;

};

