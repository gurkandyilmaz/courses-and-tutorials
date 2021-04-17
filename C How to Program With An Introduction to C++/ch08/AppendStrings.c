// Write a program that takes two strings from the user,
// appends the strings and display the final string and its length
// uses strcat and strncat functions from <string.h> library

#include <stdio.h>
#include <string.h>
#define ARRAY_SIZE 80

int main()
{
	char first_string[ARRAY_SIZE];
	char second_string[ARRAY_SIZE];
	char *final_string;
	int n = 5; // append first n character from the second string into first string.

	puts("Enter the first string then Press ENTER: ");
	fgets(first_string, ARRAY_SIZE, stdin);
	puts("Enter the second string then Press ENTER: ");
	fgets(second_string, ARRAY_SIZE, stdin);

	// space character needed between strings.
	for (size_t i = 0; i < ARRAY_SIZE; ++i)
	{
		if ( first_string[i] == '\n')
		{
			first_string[i] = ' ';
		}
	}
//  Append Strings without cutting the second string
//	puts("Appending Using strcat(): ");
//	final_string = strcat(first_string, second_string);
//	printf("Final text(length %lu):%s", strlen(final_string)-1, final_string);

//  Append Strings by taking n characters from the second string.
	puts("Appending Using strncat(): ");
	final_string = strncat(first_string, second_string, n);
	printf("Final text(length %lu):%s\n", strlen(final_string), final_string);

}
