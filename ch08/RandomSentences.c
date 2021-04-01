// Write a program that uses random-generation to create sentences.
// The program should use 4 arrays of pointers to char called article, noun, verb, preposition.
// The order is article + noun + verb + preposition + article + noun.

#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#define ARRAY_SIZE 7

void Print1DArray(char *input_array[ARRAY_SIZE]);


int main()
{
	char *article[ARRAY_SIZE] = {"the", "a" ,"one", "some", "any"};
	char *noun[ARRAY_SIZE] = {"boy", "girl" ,"dog", "town", "car"};
	char *verb[ARRAY_SIZE] = {"drove", "jumped", "ran" , "walked", "skipped"};
	char *preposition[ARRAY_SIZE] = {"to", "from", "over", "under", "on"};
	char sentence[ARRAY_SIZE];
	int random_index;	
	
	srand(time(NULL)); // random seed

//	Print1DArray(article);
//	Print1DArray(noun);
//	Print1DArray(verb);
//	Print1DArray(preposition);
	printf("Random: %d\n", rand()%5);
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
