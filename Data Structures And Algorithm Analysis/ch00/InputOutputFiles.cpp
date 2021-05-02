// This program demonstrates a simple read/write operation on files.

#include <iostream>
#include <fstream> // required to read from or write to files.
#include <string>

void write_to(std::string file_name, std::string &content);
void read_from(std::string file_name);

int main()
{
	std::string message = "This is an example text to be written.\n";

	write_to("InputOutputFile.txt", message);
	return 0;
}

void write_to(std::string filename, std::string &content)
{
	std::ofstream myfile;
	myfile.open(filename);
	myfile << content;
	myfile.close();
}

