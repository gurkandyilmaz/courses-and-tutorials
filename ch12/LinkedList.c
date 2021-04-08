// C Data Structures, Linked Lists
// Inserting and Deleting nodes in a list

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
char delete(ListPtr *sPtr, char value);
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
			case 2:
				if( !isempty(startPtr) )
				{
					printf("Enter Character to be deleted: ");
					scanf("%c", &item);
					if (delete(&startPtr, item))
					{
						printf("%c deleted.\n", item);
						printList(startPtr);
					}
					else 
					{
						printf("%c not found.\n\n", item);
					}

				}
				else
				{
					puts("List is empty.\n");
				}
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
		"2 to delete an element\n"
		"3 to end");
}










