// Write a program that uses Character Handling library <ctype.h> functions.

#include <stdio.h>
#include <ctype.h>
#define SIZE 100

void UpperCase(char input_array[SIZE]);
void LowerCase(char input_array[SIZE]);

int main()
{
	char input_text[SIZE];
	puts("Enter a text: ");
	fgets(input_text, SIZE, stdin);
//  Example usage of the functions;
//	printf("isblank: %d \n", isblank(input_text[0]));
//	printf("isdigit: %d \n", isdigit(input_text[0]));
//	printf("isalpha: %d \n", isalpha(input_text[0]));
//	printf("isalnum: %d \n", isalnum(input_text[0]));
//	printf("isxdigit: %d \n", isxdigit(input_text[0]));
//	printf("islower: %d \n", islower(input_text[0]));
//	printf("isupper: %d \n", isupper(input_text[0]));
//	printf("istolower: %c \n", tolower(input_text[0]));
//	printf("istoupper: %c \n", toupper(input_text[0]));
//	printf("isspace: %d \n", isspace(input_text[0]));
//	printf("iscntrl: %d \n", iscntrl(input_text[0]));
//	printf("ispunct: %d \n", ispunct(input_text[0]));
//	printf("isprint: %d \n", isprint(input_text[0]));
//	printf("isgraph: %d \n", isgraph(input_text[0]));
	UpperCase(input_text);
	LowerCase(input_text);
}

void UpperCase(char input_array[SIZE])
{
	puts("Input in all uppercase letters: ");
	for(size_t i=0; i<SIZE; ++i)
	{
		if( input_array[i] == '\0')
		{
			// Do nothing for the newline, tab, backspace characters.
			return;
		}
		else
		{
			printf("%c", toupper(input_array[i]));
		}
	}
	puts("");
}

void LowerCase(char input_array[SIZE])
{
	puts("Input in all lowercase letters: ");
	for(size_t i=0; i<SIZE; ++i)
	{
		if( input_array[i] == '\0')
		{
			// Do nothing for the newline, tab, backspace characters.
			return;
		}
		else
		{
			printf("%c", tolower(input_array[i]));
		}
	}
	puts("");
}



