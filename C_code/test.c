#include <stdio.h>
#include "eq.h"
 
int main()
{
	int a, b;
	float sum;
	// Check the results
	int refOut[5] = {12, 23, 34, 45, 56};
	int pass;
	int i;

	a = 10;
	b = 20;
	
	// Call the function for 4 operations
	for (i=0; i<4; i++)
	{
		sum = eq(a, b);
		fprintf(stdout, "  %d+%d/10=%f \n", a, b, sum);
		a=a+10;

	// Test the output against expected results
		if (sum == refOut[i])
			pass = 1;
		else 
			pass = 0;

		// Test for change in b
		sum = eq(a, b);
		fprintf(stdout, "  %d+%d/10=%f \n", a, b, sum);
		b=b+10;
	}

	// Final test
	sum = eq(a, b);
	fprintf(stdout, "  %d+%d/10=%f \n", a, b, sum);
	a=a+10;

	if (pass)
	{
		fprintf(stdout, "----------Pass!------------\n");
		return 0;
	}
	else
	{
		fprintf(stderr, "----------Fail!------------\n");
		return 1;
	}
}
