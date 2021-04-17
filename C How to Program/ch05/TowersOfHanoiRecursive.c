// Write a program that solves the towers of hanoi recursively
// Four parameters were given;
// The number of disks to be moved
// The peg on which these disks are initially threaded
// The peg to which this stack of disks is to be moved
// The per to be used as a temporary holding area

#include <stdio.h>

int hanoi(int disk_number, int source_peg, int target_peg, int empty_peg);

int main(void)
{
	// Define variables
	int number_of_disks, peg_1, peg_2, peg_3;

	printf("Towers of Hanoi problem. Enter the 4 parameters seperated by comma\n");
	printf("number of disks, source peg, target peg, empty peg: ");
	scanf("%d,%d,%d,%d", &number_of_disks, &peg_1, &peg_2, &peg_3);
	hanoi(number_of_disks, peg_1, peg_2, peg_3);

}

int hanoi(int disk_number, int source_peg, int target_peg, int empty_peg)
{
	if (disk_number == 1)
	{
		printf("1 Disk moved from %d to %d\n", source_peg, target_peg);
	}
	else
	{
		// Place the n-1 disk to the empty disk				
		hanoi(disk_number-1, source_peg, empty_peg, target_peg);
		// Then place the largest disk to the target peg
		printf("1 Disk moved from %d to %d\n", source_peg, target_peg);
		// Lastly, call the hanoi function with the number of disks decreased by 1
		// set the empty peg as the source peg
		hanoi(disk_number-1, empty_peg, target_peg, source_peg);
	}
	return 0;
}
