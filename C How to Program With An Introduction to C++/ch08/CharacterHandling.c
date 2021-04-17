// Write a program that uses Character Handling library <ctype.h> functions.

#include <stdio.h>
#include <ctype.h> 
#define SIZE 100

// function prototypes
void UpperCase(char input_array[SIZE]);
void LowerCase(char input_array[SIZE]);

int main()
{
	char input_text[SIZE];
	puts("Enter a text: ");
	fgets(input_text, SIZE, stdin); // Get the input text from the keyboard.

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
			// Stop the iteration when null character appeared.		
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
			// Stop the iteration when null character appeared.
			return;
		}
		else
		{
			printf("%c", tolower(input_array[i]));
		}
	}
	puts("");
}

