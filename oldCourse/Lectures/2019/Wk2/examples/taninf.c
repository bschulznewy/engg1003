#include <stdio.h>
#include <math.h>
int main() {
	double pi = 3.141592653589793238;
	printf("%f\n", tan(pi/2.0));
	printf("%f\n", tanf((float)pi/2.0));
}
