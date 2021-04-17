// Write a program that uses random-generation to create sentences.
// The program should use 4 arrays of pointers to char called article, noun, verb, preposition.
// The order is article + noun + verb + preposition + article + noun.

#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#define OUTPUT_SIZE 100

void Print1DArray(char *input_array[], int array_size);
char *ChooseWord(char *input_array[], int array_size);

int main()
{
	char *article[] = {" the", " a", " one", " some", " any"};
	char *noun[] = {" boy", " girl" ," dog", " town", " car"};
	char *verb[] = {" drove", " jumped", " ran" , " walked", " skipped"};
	char *preposition[] = {" to", " from", " over", " under", " on"};

	char output[OUTPUT_SIZE] = "";
	char *outputPtr = output;

	char *word_from_article;
	char *word_from_noun;
	char *word_from_verb;
	char *word_from_preposition;

	srand(time(NULL));
	
//	Print1DArray(article, sizeof(article)/sizeof(*article));
//	Print1DArray(noun, sizeof(noun)/sizeof(*noun));
//	Print1DArray(verb, sizeof(verb)/sizeof(*verb));
//	Print1DArray(preposition, sizeof(preposition)/sizeof(*preposition));
	
	for(size_t i = 0; i < 2; ++i) // Number of sentences.
	{
		word_from_article = ChooseWord(article, sizeof(article)/sizeof(*article));
		outputPtr =  strcat(output, word_from_article);
		
		word_from_noun = ChooseWord(noun, sizeof(noun)/sizeof(*noun));
		outputPtr = strcat(output, word_from_noun);
		
		word_from_verb = ChooseWord(verb, sizeof(verb)/sizeof(*verb));
		outputPtr = strcat(output, word_from_verb);

		word_from_preposition = ChooseWord(preposition, sizeof(preposition)/sizeof(*preposition));
		outputPtr = strcat(output, word_from_preposition);

		word_from_article = ChooseWord(article, sizeof(article)/sizeof(*article));
		outputPtr = strcat(output, word_from_article);

		word_from_noun = ChooseWord(noun, sizeof(noun)/sizeof(*noun));
		outputPtr = strcat(output, word_from_noun);
		outputPtr = strcat(output, ".");
	}

	printf("Random Sentence:\n%s\n", outputPtr);
}

char *ChooseWord(char *input_array[], int array_size)
{
	int random_index;
	random_index = rand() % array_size;
	return *(input_array + random_index);
}

void Print1DArray(char *input_array[], int array_size)
{
	puts("Elements of the array: ");
	
	for (size_t i = 0; i < array_size; ++i)
	{
		if ( *(input_array + i) != NULL )
		{
			printf("%s", *(input_array + i));
		}
		else
		{
			continue;
		}
	}
	
	puts(" ");
}
