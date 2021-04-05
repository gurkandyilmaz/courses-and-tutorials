// Write a program that inputs a line of text, tokenizes the line with strtok and
// outputs the tokens in reverse order.

#include <stdio.h>
#include <string.h>

//void reverse(char *, int array_size);

char *reverse_sentence(char input_array[], unsigned int array_length);

int main()
{
	char input[] = "This is an example text to tokenize.";
	char *inputPtr = input;
	char *tokenPtr;

	printf("%lu\n", strlen(input));
	printf("Size: %lu --%lu \t %p---%c\n", sizeof(inputPtr), sizeof(char), inputPtr, *inputPtr);
	inputPtr++;
	printf("inputPtr: %p -- %c \n", inputPtr, *inputPtr);
	//printf("Token: %s\n", strtok(inputPtr, " "));
	
	tokenPtr = reverse_sentence(input, strlen(input));
	printf("tokenPtr: %p -- %c \n", tokenPtr, *tokenPtr);
	printf("input: %p -- %c \n", input, *input);
}

char *reverse_sentence(char input_array[], unsigned int  array_length)
{
	input_array += array_length;
//	printf("Last char: %c \n", *input_array);
	puts("Reversed text: ");
	for(size_t i = 0; i < array_length; ++i)
	{
		input_array--;
		printf("%c", *input_array);
	}
	puts("");
	//input_array += 2;
	return input_array;
}

