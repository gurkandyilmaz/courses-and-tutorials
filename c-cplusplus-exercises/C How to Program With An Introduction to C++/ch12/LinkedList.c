// C Data Structures, Linked Lists
// Inserting into a list

#include <stdio.h>
#include <stdlib.h>

//structure for self reference.
struct listNode {
	char data; // each list will containa character
	struct listNode *nextPtr; // pointer to the next node
};

typedef struct listNode List; // synonym for listNode
typedef List *ListPtr;

// function prototypes
void insert(ListPtr *sPtr, char value);
int isempty(ListPtr sPtr);
void printList(ListPtr currentPtr);
void instructions(void);

int main(void)
{
	ListPtr startPtr = NULL;
	char item;

	instructions();
	printf("%s","? " );
	unsigned int choice;
	scanf("%u", &choice);

	while(choice != 3)
	{
		switch (choice) {
			case 1:
				printf("%s", "Enter a character: ");
				scanf("%c", &item);
				insert(&startPtr,item);
				printList(startPtr);
				break;
			
			default:
				puts("Invalid input");
				instructions();
				break;
		}
		printf("%s", "? ");
		scanf("%u", &choice);
	}
	puts("End of run.");

}

void instructions(void)
{
	puts("Enter your choice:\n"
		"1 to insert an element\n"
		"2 to end\n"
		);
}
void insert(ListPtr *sPtr, char value)
{
	ListPtr newPtr = malloc(sizeof(List));

	if (newPtr != NULL)
	{
		newPtr->data = value;
		newPtr->nextPtr = NULL; // node does not link to another node

		ListPtr previousPtr = NULL;
		ListPtr currentPtr = *sPtr;

		while(currentPtr != NULL && value > currentPtr->data)
		{
			previousPtr = currentPtr;
			currentPtr = currentPtr->nextPtr;
		}
		if( previousPtr == NULL)
		{
			newPtr->nextPtr = *sPtr;
			*sPtr = newPtr;
		}
		else 
		{
			previousPtr-> nextPtr = newPtr;
			newPtr->nextPtr = currentPtr;
		}
	}
	else
	{
		printf("%c not inserted. No memory available.\n", value);
	}

}

void printList(ListPtr currentPtr)
{
	if(isempty(currentPtr))
	{
		puts("List is empty\n");
	}
	else
	{
		puts("The list is: ");
		while (currentPtr != NULL) {
			printf("%c---> ", currentPtr->data);
			currentPtr = currentPtr->nextPtr;
		}
		puts("NULL\n");
	}
}

int isempty(ListPtr sPtr)
{
	return sPtr == NULL;
}
