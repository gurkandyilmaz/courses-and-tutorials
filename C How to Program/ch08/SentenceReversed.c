// Write a program that inputs a line of text, tokenizes the line with strtok and
// outputs the tokens in reverse order.

#include <stdio.h>
#include <string.h>

char *reverse_sentence(char input_array[], unsigned int array_length);

int main()
{
	char input[] = "This is an example text to tokenize.";
	char *tokenPtr;

	puts("Enter a text to see it reversed: ");
	fgets(input, 80, stdin);

	tokenPtr = reverse_sentence(input, strlen(input));
//	printf("tokenPtr: %p -- %c \n", tokenPtr, *tokenPtr);
}

char *reverse_sentence(char input_array[], unsigned int  array_length)
{
	input_array += array_length;
	puts("Reversed text: ");
	for(size_t i = 0; i < array_length; ++i)
	{
		input_array--;
		printf("%c", *input_array);
	}
	puts("");
	return input_array;
}

