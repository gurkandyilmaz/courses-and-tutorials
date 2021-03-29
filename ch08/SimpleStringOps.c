// Simple string operations with <string.h> functions

#include <stdio.h>
#include <string.h>

int main()
{
	const char *string = "This is a test";
	char character1 = 'a';
	char character2 = 'b';

	if (strchr(string, character1) != NULL)
	{
		printf("\'%c\' was found in \'%s\'.\n", character1, string);
	}
	else
	{
		printf("\'%c\' was NOT found in \'%s\'.\n", character1, string);
	}
}
