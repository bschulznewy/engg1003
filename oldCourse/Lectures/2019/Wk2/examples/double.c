#include <stdio.h>

int main() {
	int i;
	long double x;
	for(i = 0; i < 1e8; i++)
		x = x + (long double)1.0;
	return 0;
}
