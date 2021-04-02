// Write a program that uses random-generation to create sentences.
// The program should use 4 arrays of pointers to char called article, noun, verb, preposition.
// The order is article + noun + verb + preposition + article + noun.

#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#define ARRAY_SIZE 10

void Print1DArray(char *input_array[ARRAY_SIZE]);
const char *ChooseWord(char *input_array[ARRAY_SIZE]);

int main()
{
	char *article[ARRAY_SIZE] = {"the", "a" ,"one", "some", "any"};
	char *noun[ARRAY_SIZE] = {"boy", "girl" ,"dog", "town", "car"};
	char *verb[ARRAY_SIZE] = {"drove", "jumped", "ran" , "walked", "skipped"};
	char *preposition[ARRAY_SIZE] = {"to", "from", "over", "under", "on"};
	
	char word[ARRAY_SIZE] = {'A', 'l', 'a'};
	char wordd[ARRAY_SIZE] = {'k', 'x', 'q'};
	char test[ARRAY_SIZE];
	
	srand(time(NULL)); // random seed

//	Print1DArray(article);
//	Print1DArray(noun);
//	Print1DArray(verb);
//	Print1DArray(preposition);

	const char *sentence = ChooseWord(article);
	printf("Sentence: %s\n", sentence);
	for(size_t i = 0; i < strlen(sentence); i++)
	{
		printf("Word: %c\n", *(sentence+i));
	}
//	printf("Random: %s\n", ChooseWord(article));
//	sentence =  strcat(word, wordd);
//	printf("Sentence: %s\n", sentence);
}

const char *ChooseWord(char *input_array[ARRAY_SIZE])
{
	char word[ARRAY_SIZE];
	int random_index;
	random_index = rand() % 5;
//	for(size_t i = 0; i < ARRAY_SIZE; ++i)
//	{
//		word[i]
//	}
	//printf("Random index: %d and word: \"%s\"\n", random_index, word);
	return input_array[random_index];
}

void Print1DArray(char *input_array[ARRAY_SIZE])
{
	puts("Elements of the array: ");
	for (size_t i = 0; i < ARRAY_SIZE; ++i)
	{
		if ( input_array[i] != NULL )
		{
			printf("%s ", input_array[i]);
		}
		else
		{
			return;
		}
	}
	puts(" ");
}
