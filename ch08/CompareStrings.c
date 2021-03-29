// Using strcmp and strncmp functions from <string.h> library

#include <stdio.h>
#include <string.h>

int main()
{
	const char *s1 = "Happy New Year";
	const char *s2 = "Happy New Year";
	const char *s3 = "Happy Holidays";

	printf("s1 = %s\ns2 = %s\ns3 = %s\n", s1, s2, s3);
	printf("strcmp(s1,s2) = %2d\n", strcmp(s1, s2));
	printf("strcmp(s1,s3) = %2d\n", strcmp(s1, s3));
	printf("strcmp(s3,s1) = %2d\n", strcmp(s3, s1));

	printf("strncmp(s1,s2) = %2d\n", strncmp(s1, s2, 6));
	printf("strncmp(s1,s3) = %2d\n", strncmp(s1, s3, 7));
	printf("strncmp(s3,s1) = %2d\n", strncmp(s3, s1, 7));

}
