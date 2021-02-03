#include <stdio.h>	// For printf();
#include <stdlib.h>	// For rand();

int main() {
	double x, y; // The current test coordinates
	int cnt_in = 0;
	int total = 0;

	// "seed" the random number generator with an integer
	// If not done rand() returns the same sequence
	// of numbers every time the code is run
	srand(1234214);

	// Test with 1000 million points 
	while(total < 1000e6) {
		// rand() returns int, cast to double
		x = (double)rand()/RAND_MAX; // x is [0, 1]
		y = (double)rand()/RAND_MAX; // y is [0, 1]

		if(x*x + y*y <= 1)
			cnt_in++;
		total++;

		// %.9f prints 9 decimal places
		// 4.0* forces the integer division to be done as a double
		if(!(total % 1000000)) // Print answer every millionth iteration
			printf("%.9f\n", 4.0*cnt_in/total);
	}
}
